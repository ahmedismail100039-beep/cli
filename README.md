# hf — Higgsfield AI CLI

## Install

While repo is private:

```bash
gh api -H "Accept: application/vnd.github.v3.raw" \
  /repos/higgsfield-ai/cli/contents/install.sh | sh
```

When repo is public:

```bash
curl -fsSL https://raw.githubusercontent.com/higgsfield-ai/cli/main/install.sh | sh
```

Re-run any time to upgrade to latest.

## Manual

```bash
gh release download v0.1.1 -R higgsfield-ai/cli -p '*darwin_arm64.tar.gz'
tar -xzf hf_*.tar.gz
sudo mv hf /usr/local/bin/
sudo xattr -d com.apple.quarantine /usr/local/bin/hf 2>/dev/null
```

## Usage

```bash
hf auth login
hf account status
hf model list
hf generate create z_image --prompt "a cat"
```
