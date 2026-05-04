# Higgsfield CLI

[![release](https://img.shields.io/github/v/release/higgsfield-ai/cli?style=flat-square)](https://github.com/higgsfield-ai/cli/releases)
[![npm](https://img.shields.io/npm/v/@higgsfield/cli?style=flat-square)](https://www.npmjs.com/package/@higgsfield/cli)
[![license](https://img.shields.io/github/license/higgsfield-ai/cli?style=flat-square)](./LICENSE)

Generate images and videos from the terminal using 34 [Higgsfield AI](https://higgsfield.ai) models — Nano Banana Pro, FLUX.2, Soul V2, Veo 3.1, Kling v3.0, Seedance 2.0, Marketing Studio, and more. Train face-faithful Soul characters and produce branded marketing assets without leaving your shell.

![Higgsfield CLI demo](./demo.png)

## Contents

- [Install](#install)
- [Quickstart](#quickstart)
- [Examples](#examples)
- [Models](#models)
- [Commands](#commands)
- [Scripting](#scripting)
- [Updating](#updating)
- [Uninstall](#uninstall)
- [Troubleshooting](#troubleshooting)
- [Support](#support)
- [License](#license)

## Install

### macOS / Linux — curl

```bash
curl -fsSL https://raw.githubusercontent.com/higgsfield-ai/cli/main/install.sh | sh
```

### macOS / Linux — Homebrew

```bash
brew install higgsfield-ai/tap/higgsfield
```

### Cross-platform (incl. Windows) — npm

```bash
npm install -g @higgsfield/cli
```

### Manual

Download an archive matching your OS and architecture from [Releases](https://github.com/higgsfield-ai/cli/releases), extract, and place the binary in your `$PATH`.

After install, the CLI is available as three names:

- `higgsfield`
- `higgs`
- `hf`

## Quickstart

Authenticate:

```bash
higgsfield auth login
```

Generate one image:

```bash
higgsfield generate create nano_banana_2 --prompt "a fox in a snowy pine forest"
```

Block until the job finishes and print the result URL:

```bash
higgsfield generate create nano_banana_2 --prompt "..." --wait
```

Pass a local image as reference — the CLI auto-uploads it:

```bash
higgsfield generate create flux_kontext --prompt "stylize as anime" --image ./photo.png --wait
```

Media flags (`--image`, `--start-image`, `--end-image`, `--video`, `--audio`) accept either a UUID (an upload id or a previous job id) or a local file path.

## Examples

### Text → image (Nano Banana Pro)

```bash
higgsfield generate create nano_banana_2 \
  --prompt "studio product photo, soft window light" \
  --aspect_ratio 16:9 \
  --resolution 2k \
  --wait
```

### Image edit / restyle (Flux Kontext)

```bash
higgsfield generate create flux_kontext \
  --prompt "convert to watercolor" \
  --image ./input.png \
  --wait
```

### Image → video (Kling v3.0)

```bash
higgsfield generate create kling3_0 \
  --prompt "slow push-in shot" \
  --start-image ./first.png \
  --duration 5 --mode pro \
  --wait
```

### Cinematic video (Google Veo 3.1)

```bash
higgsfield generate create veo3_1 \
  --prompt "drone over a misty mountain valley at dawn" \
  --aspect_ratio 16:9 --duration 8 --quality high \
  --wait
```

### Identity-faithful image (Soul V2)

Train a Soul character once:

```bash
higgsfield soul create --name me --soul-2 \
  --image ./me1.jpg --image ./me2.jpg --image ./me3.jpg
higgsfield soul wait <soul_id>
```

Reuse the trained Soul in any compatible image model:

```bash
higgsfield generate create text2image_soul_v2 \
  --prompt "cinematic close-up portrait, golden hour" \
  --custom_reference_id <soul_id> \
  --wait
```

### Branded ad image (Marketing Studio)

```bash
higgsfield generate create marketing_studio_image \
  --prompt "product on marble countertop, soft daylight" \
  --image ./product.png \
  --resolution 4k \
  --wait
```

### Pipe a prompt from stdin

```bash
echo "a fox in a snowy pine forest" | higgsfield generate create nano_banana_2 --wait
```

## Models

34 image and video models. The list below is grouped; use `higgsfield model list` for the live catalog and `higgsfield model get <job_set_type>` for the full parameter schema (required fields, defaults, enums).

### Image (18)

| job_set_type | name |
|---|---|
| `nano_banana_2` | Nano Banana Pro |
| `nano_banana_flash` | Nano Banana 2 |
| `nano_banana` | Nano Banana |
| `flux_2` | FLUX.2 |
| `flux_kontext` | Flux Kontext |
| `gpt_image_2` | GPT Image 2 |
| `text2image_soul_v2` | Higgsfield Soul V2 |
| `seedream_v4_5` | Seedream 4.5 |
| `seedream_v5_lite` | Seedream V5 Lite |
| `grok_image` | Grok Image |
| `openai_hazel` | OpenAI Hazel |
| `image_auto` | Image Auto |
| `z_image` | Z Image |
| `kling_omni_image` | Kling O1 Image |
| `cinematic_studio_2_5` | Cinematic Studio 2.5 |
| `soul_cinematic` | Soul Cinematic |
| `soul_location` | Soul Location |
| `marketing_studio_image` | Marketing Studio Image |

### Video (16)

| job_set_type | name |
|---|---|
| `veo3_1` | Google Veo 3.1 |
| `veo3_1_lite` | Google Veo 3.1 Lite |
| `veo3` | Google Veo 3 |
| `kling3_0` | Kling v3.0 |
| `kling2_6` | Kling 2.6 Video |
| `seedance_2_0` | Seedance 2.0 |
| `seedance1_5` | Seedance 1.5 Pro |
| `wan2_7` | Wan 2.7 |
| `wan2_6` | Wan 2.6 Video |
| `minimax_hailuo` | Minimax Hailuo |
| `grok_video` | Grok Video |
| `cinematic_studio_3_0` | Cinematic Studio 3.0 |
| `cinematic_studio_video` | Cinematic Studio Video |
| `cinematic_studio_video_v2` | Cinematic Studio Video V2 |
| `soul_cast` | Soul Cast |
| `marketing_studio_video` | Marketing Studio Video |

Per-model parameters, defaults, and enums: `higgsfield model get <job_set_type>`.

## Commands

| Command | Purpose |
|---|---|
| `higgsfield auth` | login / logout / inspect token |
| `higgsfield account` | credits balance, transactions |
| `higgsfield workspace` | list / select / unset billing workspace |
| `higgsfield model` | list models, inspect parameter schema |
| `higgsfield generate` (alias `gen`) | create / cost / wait / get / list jobs |
| `higgsfield upload` | upload an image / video / audio file |
| `higgsfield soul` | train and manage Soul characters |
| `higgsfield marketing-studio` (alias `ms`) | branded ads with avatars and products |
| `higgsfield product-photoshoot` | brand image generation with mode-specific enhancement |
| `higgsfield version` | print build info |

Run `higgsfield <command> --help` for flags and examples (also `higgsfield generate create --help`, `higgsfield soul create --help`, etc.).

## Scripting

### JSON output

Every command accepts `--json` for machine-readable output (good for `jq` pipelines):

```bash
higgsfield generate list --json | jq -r '.[] | select(.status=="completed") | .result_url'
```

### Block until done

```bash
higgsfield generate create kling3_0 --prompt "..." --start-image ./a.png --wait --json \
  | jq -r '.[0].result_url'
```

Tunables: `--wait-timeout 20m` (default `10m`), `--wait-interval 5s` (default `3s`).

### Shell completion

```bash
higgsfield completion zsh   > "${fpath[1]}/_higgsfield"
higgsfield completion bash  > /etc/bash_completion.d/higgsfield
higgsfield completion fish  > ~/.config/fish/completions/higgsfield.fish
higgsfield completion powershell | Out-String | Invoke-Expression  # current session
```

### Environment variables

| Variable | Purpose |
|---|---|
| `HIGGSFIELD_API_URL` | API endpoint (default: production) |
| `HIGGSFIELD_DEVICE_AUTH_URL` | Device-flow auth endpoint |
| `HIGGSFIELD_CREDENTIALS_PATH` | Token file path (default `~/.config/higgsfield/credentials.json`) |

### Exit codes

`0` success · `1` generic · `2` auth · `3` API · `4` user input.

## Updating

```bash
# curl
curl -fsSL https://raw.githubusercontent.com/higgsfield-ai/cli/main/install.sh | sh

# brew
brew update && brew upgrade higgsfield

# npm
npm install -g @higgsfield/cli@latest
```

Pin to a specific release:

```bash
curl -fsSL https://raw.githubusercontent.com/higgsfield-ai/cli/main/install.sh | sh -s -- --tag v0.1.22
# or
npm install -g @higgsfield/cli@0.1.22
```

## Uninstall

```bash
# curl install (default prefix /usr/local)
sudo rm /usr/local/bin/higgsfield /usr/local/bin/higgs /usr/local/bin/hf

# brew
brew uninstall higgsfield

# npm
npm uninstall -g @higgsfield/cli
```

Remove stored credentials:

```bash
rm -rf ~/.config/higgsfield
```

## Troubleshooting

**`Session expired` / `Not authenticated`** — tokens are short-lived. Re-run `higgsfield auth login`.

**`hf` collides with another tool** — use `higgsfield` or `higgs` instead, or reinstall via curl with `--no-hf`:

```bash
curl -fsSL https://raw.githubusercontent.com/higgsfield-ai/cli/main/install.sh | sh -s -- --no-hf
```

**Behind a corporate proxy** — set `HTTPS_PROXY` / `HTTP_PROXY` and re-run.

**Where is the token stored?** — `~/.config/higgsfield/credentials.json` (mode `600`). Override with `HIGGSFIELD_CREDENTIALS_PATH`.

**`Unknown model "<name>"`** — run `higgsfield model list` for the current catalog; model names occasionally change.

## Support

Bugs and feature requests: [github.com/higgsfield-ai/cli/issues](https://github.com/higgsfield-ai/cli/issues). Please include `higgsfield version` output and the exact command that failed.

Platform: [higgsfield.ai](https://higgsfield.ai)

## License

[MIT](./LICENSE)
