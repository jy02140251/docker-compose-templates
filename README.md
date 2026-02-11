# Docker Compose Templates

A curated collection of production-ready **Docker Compose** templates for common web application stacks. Each template includes optimized Dockerfiles, health checks, volume management, and networking best practices.

## Available Templates

### 1. FastAPI + MySQL + Redis
Full-stack Python API setup with MySQL database, Redis cache, and Nginx reverse proxy.
- FastAPI with Uvicorn workers
- MySQL 8.0 with persistent storage
- Redis 7 for caching and sessions
- Nginx as reverse proxy with SSL termination

### 2. Node.js + MongoDB
Express.js application with MongoDB database and Mongo Express admin UI.
- Node.js 20 LTS with multi-stage build
- MongoDB 7 with replica set support
- Mongo Express for database administration

### 3. Django + PostgreSQL
Django application with PostgreSQL database, Celery task queue, and RabbitMQ.
- Django with Gunicorn WSGI server
- PostgreSQL 15 with persistent data
- Ready for Django ORM migrations

### 4. Monitoring Stack
Complete monitoring setup with Prometheus, Grafana, and exporters.
- Prometheus for metrics collection
- Grafana dashboards (pre-configured)
- Node Exporter for host metrics
- cAdvisor for container metrics

## Usage

```bash
# Clone the repository
git clone https://github.com/jy02140251/docker-compose-templates.git

# Choose a template
cd docker-compose-templates/fastapi-mysql-redis

# Start the stack
docker-compose up -d

# View logs
docker-compose logs -f

# Stop the stack
docker-compose down
```

## Structure

```
docker-compose-templates/
├── fastapi-mysql-redis/
│   ├── docker-compose.yml
│   ├── Dockerfile
│   └── nginx.conf
├── node-mongodb/
│   ├── docker-compose.yml
│   └── Dockerfile
├── django-postgresql/
│   ├── docker-compose.yml
│   └── Dockerfile
└── monitoring/
    ├── docker-compose.yml
    └── prometheus.yml
```

## License

MIT License