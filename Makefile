BRAISED_IMAGE ?= ghcr.io/ravindk89/braised
BRAISED_TAG   ?= latest
BRAISED        = $(BRAISED_IMAGE):$(BRAISED_TAG)

CONTAINER_CMD := $(shell command -v podman 2>/dev/null || command -v docker 2>/dev/null)

.PHONY: build build-prod build-staging

build: build-prod

build-prod:
	$(CONTAINER_CMD) run --rm -v $(PWD):/site $(BRAISED) build --config braised-prod.yaml

build-staging:
	$(CONTAINER_CMD) run --rm -e BRAISED_BRANCH -v $(PWD):/site $(BRAISED) build --config braised-staging.yaml
