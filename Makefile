dev-run:
	iex -S mix phx.server

build-api:
	swagger-cli bundle -o static/docs/api/openapi.json -t json -r static/docs/api/openapi.yaml


