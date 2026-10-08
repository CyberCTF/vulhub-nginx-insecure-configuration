# Nginx Misconfigurations

[Vulhub](https://vulhub.org)'s [`nginx/insecure-configuration`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/nginx/insecure-configuration) environment, by
phith0n and the Vulhub contributors: three nginx servers with classic configuration mistakes: CRLF injection, alias traversal and add_header inheritance. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine is Vulhub's published image `vulhub/nginx:1` with Vulhub's configuration, files and web root copied in (Vulhub mounts them); the environment folder is vendored in [`build/nginx/app/`](build/nginx/app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| nginx | nginx: CRLF injection on 8080, alias traversal on 8081, add_header on 8082 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8080/, http://localhost:8081/ and http://localhost:8082/. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/nginx/insecure-configuration/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
