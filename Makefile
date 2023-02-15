postgres:
	docker run --name fiber_postgres -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root -d postgres:12-alpine

createdb:
	docker exec -it fiber_postgres createdb --username=root --owner=root fiber_demo
 
dropdb:
	docker exec -it fiber_postgres dropdb fiber_demo

.PHONY: postgres createdb dropdb