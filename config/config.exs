# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :podcats,
  ecto_repos: [Podcats.Repo]

# Configures the endpoint
config :podcats, PodcatsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7qfstIEqLqqr70Op9Mqa1guxEBdWV4mf5qj5+UPgBJohM/fe62JiFYaq6g62JjWr",
  render_errors: [view: PodcatsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Podcats.PubSub,
  live_view: [signing_salt: "FuHAMPqA"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
