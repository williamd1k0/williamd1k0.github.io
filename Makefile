CONTAINER = podman
JEKYLL_VERSION = jekyll/minimal:3
JEKYLL_CMD = $(CONTAINER) run --rm -it -e JEKYLL_ROOTLESS=1 -v ${PWD}:/srv/jekyll --net=host ${JEKYLL_VERSION} jekyll ${1}; true

build:
	@$(call JEKYLL_CMD, build)

serve:
	@$(call JEKYLL_CMD, serve)

.PHONY: serve