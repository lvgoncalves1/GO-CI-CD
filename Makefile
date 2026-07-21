lint: 
	docker run --rm -it -v "$(PWD):/app" -w /app golangci/golangci-lint golangci-lint run controllers/ database/ routes/ models/
test:
	docker compose exec app go test main_test.go
start:
	docker compose up -d
CI: start lint test