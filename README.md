# Higgsfield CLI

[![release](https://img.shields.io/github/v/release/higgsfield-ai/cli?style=flat-square)](https://github.com/higgsfield-ai/cli/releases)
[![license](https://img.shields.io/github/license/higgsfield-ai/cli?style=flat-square)](./LICENSE)

Higgsfield CLI is a command-line tool for the [Higgsfield AI](https://higgsfield.ai) platform. Generate images and videos with 35+ models (Nano Banana, Soul, Veo, Kling, Seedance, Flux), train Soul Characters, and produce branded marketing assets — all from your terminal.

<img src="./demo.png" />

## Get started

1. Install the CLI:

    **macOS / Linux (Recommended):**
    ```bash
    curl -fsSL https://raw.githubusercontent.com/higgsfield-ai/cli/main/install.sh | sh
    ```

    **Homebrew (macOS / Linux):**
    ```bash
    brew install higgsfield-ai/tap/higgsfield
    ```

    **Manual download:**
    See [Releases](https://github.com/higgsfield-ai/cli/releases). Pick the archive matching your OS and architecture, extract, and place the binary in your `$PATH`.

2. Authenticate:
    ```bash
    higgsfield auth login
    ```

3. Generate something:
    ```bash
    higgsfield generate create nano_banana_2 --prompt "a fox in a snowy pine forest"
    ```

The CLI is also available as `higgs` and `hf` (when not in conflict with other tools).

## What it does

- **Auth** — `higgsfield auth login`, device-code flow
- **Generate** — text-to-image, image-to-image, image-to-video, reference-based
- **Soul** — train a face-faithful identity model, reuse across generations
- **Marketing Studio** — branded ads with avatars, products, UGC modes
- **Workspace** — switch between team workspaces, see balance and history

Run `higgsfield` for the full list, or `higgsfield <command> --help` for any subcommand.

## Updating

```bash
# install.sh path
curl -fsSL https://raw.githubusercontent.com/higgsfield-ai/cli/main/install.sh | sh

# brew path
brew update && brew upgrade higgsfield
```

## Reporting bugs

File an issue at [github.com/higgsfield-ai/cli/issues](https://github.com/higgsfield-ai/cli/issues).

## License

[MIT](./LICENSE)
