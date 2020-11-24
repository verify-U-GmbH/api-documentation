# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :server, Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/j+BEO+5fGIdn+3tb/RZPrm1/q7/opIT5IuMVwo/Vd1WTRtQD8D/3jrsyzEUHJ1N",
  render_errors: [view: Web.ErrorView, accepts: ~w(html json)],
  pubsub_server: Server.PubSub

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, :template_engines, md: PhoenixMarkdown.Engine

config :phoenix_markdown, :server_tags, :all

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
