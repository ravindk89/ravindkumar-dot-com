BRAISED_IMAGE ?= ghcr.io/ravindk89/braised
BRAISED_TAG   ?= latest
BRAISED        = $(BRAISED_IMAGE):$(BRAISED_TAG)

VALE_IMAGE ?= docker.io/jdkato/vale

CONTAINER_CMD := $(shell command -v podman 2>/dev/null || command -v docker 2>/dev/null)

.PHONY: build build-prod build-staging lint vale-sync

build: build-prod

build-prod:
	$(CONTAINER_CMD) run --rm -v $(PWD):/site $(BRAISED) build --config braised-prod.yaml

build-staging:
	$(CONTAINER_CMD) run --rm -e BRAISED_BRANCH -v $(PWD):/site $(BRAISED) build --config braised-staging.yaml

# Fetch Vale style packages (Google, etc.) into .vale/styles. Run once, or
# whenever the Packages list in .vale.ini changes.
vale-sync:
	$(CONTAINER_CMD) run --rm -v $(PWD):/docs:z -w /docs $(VALE_IMAGE) sync

# Lint prose in docs/. Depends on vale-sync having populated the styles.
lint:
	$(CONTAINER_CMD) run --rm -v $(PWD):/docs:z -w /docs $(VALE_IMAGE) docs
