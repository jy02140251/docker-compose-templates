# Contributing New Templates

Thank you for contributing! Follow these guidelines to add new Docker Compose templates.

## Template Structure

Each template should have its own directory:

```
template-name/
  docker-compose.yml     # Main compose file (required)
  Dockerfile             # Custom Dockerfile if needed
  .env.example           # Environment variable examples
  README.md              # Template-specific docs
  config/                # Configuration files
```

## Requirements

1. **Use specific image tags** - Never use `latest` in production templates
2. **Add health checks** - All services should have health checks
3. **Use volumes** - Data should be persisted with named volumes
4. **Network isolation** - Use custom networks, not the default bridge
5. **Environment variables** - Use `.env` files for configuration
6. **Resource limits** - Add memory and CPU limits where appropriate

## Docker Compose Best Practices

- Use version "3.8" or higher
- Add `depends_on` with `condition: service_healthy`
- Include `restart: unless-stopped` for production services
- Document all exposed ports

## Testing

Before submitting:
```bash
cd template-name/
docker-compose config  # Validate syntax
docker-compose up -d   # Test deployment
docker-compose ps      # Verify all services are healthy
docker-compose down -v # Clean up
```