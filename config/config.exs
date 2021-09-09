# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :uncle_phill,
  ecto_repos: [UnclePhill.Repo]

# Configures the endpoint
config :uncle_phill, UnclePhillWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "W/CSJk0UGPBxv++7kjNY5XJWWQOXMUt68oYYkR/Fn7oK+kDnfIo9S9zHH7TOq/6q",
  render_errors: [view: UnclePhillWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: UnclePhill.PubSub,
  live_view: [signing_salt: "HCrFPxDm"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
