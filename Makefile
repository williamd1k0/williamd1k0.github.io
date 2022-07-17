CONTAINER = podman
JEKYLL_VERSION = jekyll/minimal:3
JEKYLL_CMD = $(CONTAINER) run --rm -it -e JEKYLL_ROOTLESS=1 -v ${PWD}:/srv/jekyll --net=host ${JEKYLL_VERSION} jekyll ${1}; true
DOER = William Tumeo
YEAR = $(shell date +%Y)

build:
	@$(call JEKYLL_CMD, build)

serve:
	@$(call JEKYLL_CMD, serve)

LICENSE: LICENSE.m4
	@m4 -D__YEAR__=${YEAR} -D__DOER__='${DOER}' $< > $@

.PHONY: serve build LICENSE