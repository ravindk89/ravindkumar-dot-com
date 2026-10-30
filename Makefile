BRAISED_IMAGE ?= ghcr.io/ravindk89/braised
# Pinned braised release. Bump deliberately after checking the release notes;
# override per run with `make build BRAISED_TAG=latest`.
BRAISED_TAG   ?= v1.2
BRAISED        = $(BRAISED_IMAGE):$(BRAISED_TAG)

VALE_IMAGE ?= docker.io/jdkato/vale

CONTAINER_CMD := $(shell command -v podman 2>/dev/null || command -v docker 2>/dev/null)

.PHONY: build build-prod build-staging serve lint vale-sync

build: build-prod

build-prod:
	$(CONTAINER_CMD) run --rm -v $(PWD):/site $(BRAISED) build --config braised-prod.yaml

build-staging:
	$(CONTAINER_CMD) run --rm -e BRAISED_BRANCH -v $(PWD):/site $(BRAISED) build --config braised-staging.yaml

# Local dev server with live reload at http://localhost:$(SERVE_PORT). Binds
# 0.0.0.0 inside the container so the published port is reachable.
SERVE_PORT ?= 4321
serve:
	$(CONTAINER_CMD) run --rm -it -p $(SERVE_PORT):4321 -v $(PWD):/site:z $(BRAISED) serve /site --host 0.0.0.0

# Fetch Vale style packages (Google, etc.) into .vale/styles. Run once, or
# whenever the Packages list in .vale.ini changes.
vale-sync:
	$(CONTAINER_CMD) run --rm -v $(PWD):/docs:z -w /docs $(VALE_IMAGE) sync

# Lint prose in docs/. Depends on vale-sync having populated the styles.
lint:
	$(CONTAINER_CMD) run --rm -v $(PWD):/docs:z -w /docs $(VALE_IMAGE) docs
