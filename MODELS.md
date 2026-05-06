# Higgsfield CLI Models

Generated from `higgsfield model list` and `higgsfield model get <job_set_type>`. Run those commands for the live schema.

The `--prompt` flag is required by every model. Media inputs (`--image`, `--start-image`, `--end-image`, `--video`, `--audio`) accept either a UUID (upload id or previous job id) or a local file path; paths are auto-uploaded.


## Image (18)

### cinematic_studio_2_5 — Cinematic Studio 2.5

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--resolution` | false | `1k` | `1k`, `2k`, `4k` |

### flux_2 — FLUX.2

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--image` (1+) | false | — | UUID or path |
| `--model` | false | `pro` | `pro`, `flex`, `max` |
| `--prompt` | true | — | string |
| `--resolution` | false | `1k` | `1k`, `2k` |

### flux_kontext — Flux Kontext

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |

### gpt_image_2 — GPT Image 2

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16`, `3:2`, `2:3` |
| `--batch_size` | false | `1` | integer |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--quality` | false | `low` | `low`, `medium`, `high` |
| `--resolution` | false | `1k` | `1k`, `2k`, `4k` |

### grok_image — Grok Image

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--image` (1+) | false | — | UUID or path |
| `--mode` | false | `std` | `std`, `pro` |
| `--prompt` | true | — | string |

### image_auto — Image Auto

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |

### kling_omni_image — Kling O1 Image

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `auto`, `16:9`, `9:16`, `4:3`, `3:4`, `3:2`, `2:3`, `21:9` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--resolution` | false | `1k` | `1k`, `2k` |

### marketing_studio_image — Marketing Studio Image

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `auto`, `1:1`, `3:2`, `2:3`, `4:3`, `3:4`, `4:5`, `5:4`, `9:16`, `16:9`, `21:9` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--resolution` | false | `1k` | `1k`, `2k`, `4k` |

### nano_banana — Nano Banana

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `auto`, `1:1`, `3:2`, `2:3`, `4:3`, `3:4`, `4:5`, `5:4`, `9:16`, `16:9`, `21:9` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |

### nano_banana_2 — Nano Banana Pro

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `auto`, `1:1`, `3:2`, `2:3`, `4:3`, `3:4`, `4:5`, `5:4`, `9:16`, `16:9`, `21:9` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--resolution` | false | `1k` | `1k`, `2k`, `4k` |

### nano_banana_flash — Nano Banana 2

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `3:2`, `2:3`, `4:3`, `3:4`, `4:5`, `5:4`, `9:16`, `16:9`, `21:9` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--resolution` | false | `1k` | `1k`, `2k`, `4k` |

### openai_hazel — OpenAI Hazel

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--quality` | false | `medium` | `low`, `medium`, `high` |

### seedream_v4_5 — Seedream 4.5

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `16:9`, `3:2`, `21:9`, `3:4`, `9:16`, `2:3` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--quality` | false | `basic` | `basic`, `high` |

### seedream_v5_lite — Seedream V5 Lite

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--quality` | false | `basic` | `basic`, `high` |

### soul_cinematic — Soul Cinematic

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |

### soul_location — Soul Location

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--prompt` | true | — | string |

### text2image_soul_v2 — Higgsfield Soul V2

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--soul-id` | false | — | Soul UUID |
| `--image` (1+) | false | — | UUID or path |
| `--prompt` | true | — | string |

### z_image — Z Image

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--prompt` | true | — | string |

## Video (16)

### cinematic_studio_3_0 — Cinematic Studio 3.0

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `16:9`, `9:16`, `1:1` |
| `--duration` | false | `5` | integer |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--prompt` | true | — | string |

### cinematic_studio_video — Cinematic Studio Video

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--duration` | false | `5` | `5`, `10` |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--slow_motion` | false | `false` | boolean |
| `--sound` | false | `true` | boolean |

### cinematic_studio_video_v2 — Cinematic Studio Video V2

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--duration` | false | `5` | integer |
| `--genre` | false | `auto` | `auto`, `action`, `horror`, `comedy`, `western`, `suspense`, `intimate`, `spectacle` |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--mode` | false | `std` | `pro`, `std` |
| `--prompt` | true | — | string |

### grok_video — Grok Video

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `16:9`, `9:16`, `1:1` |
| `--duration` | false | `5` | integer |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--prompt` | true | — | string |

### kling2_6 — Kling 2.6 Video

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `16:9`, `9:16`, `1:1` |
| `--duration` | false | `5` | `5`, `10` |
| `--image` (single) | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--sound` | false | `true` | boolean |

### kling3_0 — Kling v3.0

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `16:9`, `9:16`, `1:1` |
| `--duration` | false | `5` | integer |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--mode` | false | `std` | `pro`, `std` |
| `--prompt` | true | — | string |
| `--sound` | false | `on` | `on`, `off` |

### marketing_studio_video — Marketing Studio Video

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `auto`, `21:9`, `16:9`, `4:3`, `1:1`, `3:4`, `9:16` |
| `--avatars` | false | — | array |
| `--duration` | false | `15` | integer |
| `--generate_audio` | false | `false` | boolean |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--mode` | false | `ugc` | `ugc`, `tutorial`, `ugc_unboxing`, `hyper_motion`, `product_review`, `tv_spot`, `wild_card`, `ugc_virtual_try_on`, `virtual_try_on` |
| `--product_ids` | false | — | array |
| `--prompt` | true | — | string |
| `--resolution` | false | `720p` | `480p`, `720p` |
| `--web_product_ids` | false | — | array |

### minimax_hailuo — Minimax Hailuo

| flag | required | default | values |
|---|---|---|---|
| `--duration` | false | `6` | `6`, `10` |
| `--image` (1+) | false | — | UUID or path |
| `--model` | false | `minimax-2.3` | `minimax`, `minimax-fast`, `minimax-2.3`, `minimax-2.3-fast` |
| `--prompt` | true | — | string |
| `--resolution` | false | `768` | `512`, `768`, `1080` |

### seedance1_5 — Seedance 1.5 Pro

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `auto`, `16:9`, `9:16`, `4:3`, `3:4`, `1:1`, `21:9` |
| `--duration` | false | `4` | `4`, `8`, `12` |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--resolution` | false | `720p` | `480p`, `720p`, `1080p` |

### seedance_2_0 — Seedance 2.0

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `auto`, `16:9`, `9:16`, `4:3`, `3:4`, `1:1`, `21:9` |
| `--duration` | false | `5` | integer |
| `--genre` | false | `auto` | `auto`, `action`, `horror`, `comedy`, `noir`, `drama`, `epic` |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--mode` | false | `std` | `std`, `fast` |
| `--prompt` | true | — | string |
| `--resolution` | false | `720p` | `480p`, `720p`, `1080p` |

### soul_cast — Soul Cast

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `1:1` | `1:1`, `4:3`, `3:4`, `16:9`, `9:16` |
| `--budget` | false | `50` | integer |
| `--prompt` | false | — | object |

### veo3 — Google Veo 3

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `16:9`, `9:16` |
| `--image` (single) | true | — | UUID or path |
| `--model` | false | `veo-3-fast` | `veo-3-preview`, `veo-3-fast` |
| `--prompt` | true | — | string |

### veo3_1 — Google Veo 3.1

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `16:9`, `9:16` |
| `--duration` | false | `8` | `4`, `6`, `8` |
| `--image` (single) | false | — | UUID or path |
| `--model` | false | `veo-3-1-fast` | `veo-3-1-preview`, `veo-3-1-fast` |
| `--prompt` | true | — | string |
| `--quality` | false | `basic` | `basic`, `high`, `ultra` |

### veo3_1_lite — Google Veo 3.1 Lite

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `16:9`, `9:16`, `auto` |
| `--duration` | false | `8` | `4`, `6`, `8` |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--prompt` | true | — | string |

### wan2_6 — Wan 2.6 Video

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `16:9`, `9:16`, `1:1` |
| `--duration` | false | `5` | `5`, `10`, `15` |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--quality` | false | `720p` | `720p`, `1080p` |

### wan2_7 — Wan 2.7

| flag | required | default | values |
|---|---|---|---|
| `--aspect_ratio` | false | `16:9` | `16:9`, `9:16`, `1:1`, `4:3`, `3:4` |
| `--duration` | false | `5` | integer |
| `--start-image`, `--end-image`, `--image`, `--video`, `--audio` | false | — | UUID or path |
| `--prompt` | true | — | string |
| `--resolution` | false | `720p` | `720p`, `1080p` |
