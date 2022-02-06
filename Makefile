
dev:
	@echo "dev..."
	cd cmd/tectonic && go run main.go start
	@echo "Done"

build: clean
	@echo "Building..."
	cd cmd/tectonic && go build -o ../../dist/tectonic
	@echo "Done."


clean:
	@echo "Cleaning started...."
	rm -rf dist/
	@echo "Cleaning completed"