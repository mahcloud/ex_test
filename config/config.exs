# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ex_test,
  ecto_repos: [ExTest.Repo]

# Configures the endpoint
config :ex_test, ExTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pMG8GPJItARiHIAbAZ8tLjUfCpVTyzqbzs8kWr27SCVMmz5oX9OTWOpG6bO9t1rm",
  render_errors: [view: ExTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ExTest.PubSub,
  live_view: [signing_salt: "WFRwUVFw"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
