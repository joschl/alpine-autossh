.PHONY: help

help: ## this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

start-tunnel: ## start SSH VPN listening on localhost:1337
	docker-compose up -d && docker cp $(HOME)/.ssh/id_rsa `docker-compose ps -q ssh-vpn`:/payload

stop-tunnel: ## stop SSH VPN
	docker-compose down --remove-orphans
