# Run docker-compose "dev-env.docker-compose.yml"
docker:
	- docker-compose -f dev-env.docker-compose.yml up -d

install:
	npm i

dev:
	cargo run

format:
	cargo fmt && cargo prisma format

migrate:
	cargo prisma migrate dev

studio:
	npm run studio