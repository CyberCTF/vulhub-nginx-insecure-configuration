# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `nginx/insecure-configuration` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `build/nginx/app/` | [`nginx/insecure-configuration`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/nginx/insecure-configuration) |
| `base/nginx/1/` | [`base/nginx/1`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/nginx/1): the Dockerfile of `vulhub/nginx:1` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/nginx:1`,
pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/`
to show how it is built. Building from `base/` instead would download the vulnerable software from its
original sources, some of which are gone.

`build/nginx/Dockerfile` starts from `vulhub/nginx:1` and copies in `configuration/`, `files/` and
`www/`, which Vulhub's compose file mounts as volumes over `/etc/nginx/conf.d`, `/home` and the
web root (Isoloom has no bind mounts). A mount hides what the image had there, so the Dockerfile
empties the configuration folder and web root first.

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
