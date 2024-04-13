# Author:  spunk-developer <xspunk.developer@gmail.com>
# License: Licensed under the MIT License.
#          See LICENSE for details.

.PHONY: help
help:
	@echo 'Usage:'
	@LC_ALL=C $(MAKE) -pRrq -f $(firstword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/(^|\n)# Files(\n|$$)/,/(^|\n)# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | grep -E -v -e '^[^[:alnum:]]' -e '^$@$$'

.PHONY: tidy
tidy:
	go fmt ./...
	go mod tidy -v.PHONY: build
