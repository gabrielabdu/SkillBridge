# ===========================
# SkillBridge Makefile
# ===========================

# Run the app with Docker Compose
up:
	docker-compose up --build -d

# Stop containers
down:
	docker-compose down

# View logs from backend
logs-backend:
	docker-compose logs -f backend

# View logs from database
logs-db:
	docker-compose logs -f db

# Restart backend only
restart-backend:
	docker-compose restart backend

# Run migrations manually
migrate:
	docker exec -it skillbridge_db psql -U skillbridge -d skillbridge -f /docker-entrypoint-initdb.d/init.sql

# Seed database manually
seed:
	docker exec -it skillbridge_db psql -U skillbridge -d skillbridge -f /docker-entrypoint-initdb.d/seed.sql

# Enter Postgres CLI
psql:
	docker exec -it skillbridge_db psql -U skillbridge -d skillbridge
