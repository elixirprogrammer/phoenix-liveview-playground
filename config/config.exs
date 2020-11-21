# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :liveview_playground,
  ecto_repos: [LiveviewPlayground.Repo]

# Configures the endpoint
config :liveview_playground, LiveviewPlaygroundWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Om8mOkPU7OnY8J6YFct4wKo5vSvaSFTCGKUzrJ6bewTRSiZbVAUxO+CcmyMJsBWx",
  render_errors: [view: LiveviewPlaygroundWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveviewPlayground.PubSub,
  live_view: [signing_salt: "9se3xPwU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
