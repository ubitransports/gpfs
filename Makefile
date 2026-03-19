.PHONY: start stop restart logs add-host

start:
	docker-compose up -d

stop:
	docker-compose down

restart: stop start

logs:
	docker-compose logs -f

add-host:
	@echo "Adding gpfs.wandev to /etc/hosts (requires sudo)"
	@grep -q "gpfs.wandev" /etc/hosts || echo "127.0.0.1 gpfs.wandev" | sudo tee -a /etc/hosts > /dev/null
	@echo "Host added successfully"
