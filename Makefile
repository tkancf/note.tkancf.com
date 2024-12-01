.DEFAULT_GOAL:=help

.PHONY: publish
publish:
	@git add .
	@git commit -m "Update $(shell date '+%Y-%m-%d %H:%M:%S')" || echo "No changes to commit"
	@git push

.PHONY: help
help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
