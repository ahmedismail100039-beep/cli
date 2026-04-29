#!/bin/sh
# hf installer.
#
# Usage:
#   gh api -H "Accept: application/vnd.github.v3.raw" \
#     /repos/higgsfield-ai/cli/contents/install.sh | sh
#
#   ./install.sh                       # /usr/local/bin (sudo if needed)
#   ./install.sh --prefix=$HOME/.local
#   ./install.sh --tag v0.1.1          # specific tag (default: latest)

set -e

REPO="higgsfield-ai/cli"
PREFIX="/usr/local"
TAG=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --prefix=*) PREFIX="${1#*=}"; shift ;;
    --prefix)   PREFIX="$2"; shift 2 ;;
    --tag=*)    TAG="${1#*=}"; shift ;;
    --tag)      TAG="$2"; shift 2 ;;
    *) echo "Unknown arg: $1" >&2; exit 1 ;;
  esac
done

OS="$(uname -s | tr '[:upper:]' '[:lower:]')"
ARCH="$(uname -m)"
case "$ARCH" in
  x86_64|amd64)  ARCH="amd64" ;;
  arm64|aarch64) ARCH="arm64" ;;
  *) echo "Unsupported arch: $ARCH" >&2; exit 1 ;;
esac
case "$OS" in
  darwin|linux) ;;
  *) echo "Unsupported OS: $OS" >&2; exit 1 ;;
esac

TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

if command -v gh >/dev/null 2>&1 && gh auth status >/dev/null 2>&1; then
  if [ -z "$TAG" ]; then
    TAG="$(gh release view -R "$REPO" --json tagName -q .tagName)"
  fi
  PATTERN="hf_*_${OS}_${ARCH}.tar.gz"
  echo "Downloading $TAG ($OS/$ARCH) via gh..."
  gh release download "$TAG" -R "$REPO" -p "$PATTERN" -D "$TMPDIR"
else
  if [ -z "$TAG" ]; then
    TAG="$(curl -fsSL "https://api.github.com/repos/$REPO/releases/latest" | sed -n 's/.*"tag_name": *"\([^"]*\)".*/\1/p' | head -n 1)"
    if [ -z "$TAG" ]; then
      echo "Failed to determine latest release. If repo is private, install gh: brew install gh && gh auth login" >&2
      exit 1
    fi
  fi
  VER_NO_V="${TAG#v}"
  TARBALL="hf_${VER_NO_V}_${OS}_${ARCH}.tar.gz"
  URL="https://github.com/$REPO/releases/download/$TAG/$TARBALL"
  echo "Downloading $URL"
  curl -fsSL -o "$TMPDIR/$TARBALL" "$URL"
fi

ARCHIVE="$(ls "$TMPDIR"/hf_*.tar.gz 2>/dev/null | head -n 1)"
if [ -z "$ARCHIVE" ]; then
  echo "No archive found." >&2
  exit 1
fi
tar -xzf "$ARCHIVE" -C "$TMPDIR"

BIN_DIR="$PREFIX/bin"
if [ ! -d "$BIN_DIR" ]; then
  mkdir -p "$BIN_DIR" 2>/dev/null || sudo mkdir -p "$BIN_DIR"
fi

if [ -w "$BIN_DIR" ]; then
  install -m 0755 "$TMPDIR/hf" "$BIN_DIR/hf"
  ln -sf "$BIN_DIR/hf" "$BIN_DIR/higgsfield"
  [ "$OS" = "darwin" ] && xattr -d com.apple.quarantine "$BIN_DIR/hf" 2>/dev/null || true
else
  sudo install -m 0755 "$TMPDIR/hf" "$BIN_DIR/hf"
  sudo ln -sf "$BIN_DIR/hf" "$BIN_DIR/higgsfield"
  [ "$OS" = "darwin" ] && sudo xattr -d com.apple.quarantine "$BIN_DIR/hf" 2>/dev/null || true
fi

echo "Installed: $($BIN_DIR/hf version)"
echo "Binary: $BIN_DIR/hf  (also linked as 'higgsfield')"
