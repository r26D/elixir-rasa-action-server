use Mix.Config

config :rasa_action_server,
       port: String.to_integer(System.get_env("PORT") || "4444"),
       redirect_url: System.get_env("REDIRECT_URL")