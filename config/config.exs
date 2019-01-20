# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :oauth,
  ecto_repos: [Oauth.Repo]

# Configures the endpoint
config :oauth, OauthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Lo3pRBh7j9ImGyUAXFSkQtJW59PTJymG2P1kSP56xdtlPcGPyS1Cn4wPbLbSJ9AP",
  render_errors: [view: OauthWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Oauth.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
