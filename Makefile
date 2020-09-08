dev-run:
	iex -S mix phx.server

build-api:
	node node_modules/swagger-cli/swagger-cli.js bundle -o static/docs/api/openapi.json -t json -r lib/openapi/openapi.yaml


