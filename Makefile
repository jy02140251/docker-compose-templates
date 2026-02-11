.PHONY: help

help:  ## List all available templates
	@echo "Docker Compose Templates"
	@echo "========================"
	@echo ""
	@echo "Available templates:"
	@echo "  django-postgresql     Django + PostgreSQL stack"
	@echo "  fastapi-mysql-redis   FastAPI + MySQL + Redis stack"
	@echo "  node-mongodb          Node.js + MongoDB stack"
	@echo "  monitoring            Prometheus + Grafana monitoring"
	@echo "  elk-stack             Elasticsearch + Logstash + Kibana"
	@echo "  redis-cluster         Redis master-slave with Sentinel"
	@echo "  minio-s3              MinIO S3-compatible storage"
	@echo "  rabbitmq              RabbitMQ message broker"
	@echo "  traefik-proxy         Traefik reverse proxy"
	@echo ""
	@echo "Usage: cd <template-dir> && docker-compose up -d"

up-%:  ## Start a specific template (e.g., make up-elk-stack)
	cd $* && docker-compose up -d

down-%:  ## Stop a specific template
	cd $* && docker-compose down

logs-%:  ## View logs for a template
	cd $* && docker-compose logs -f

ps-%:  ## Show running containers for a template
	cd $* && docker-compose ps

clean-%:  ## Remove volumes for a template
	cd $* && docker-compose down -v

clean-all:  ## Remove all template volumes
	@for dir in */; do \
		if [ -f "$$dir/docker-compose.yml" ]; then \
			echo "Cleaning $$dir..."; \
			cd $$dir && docker-compose down -v; cd ..; \
		fi \
	done