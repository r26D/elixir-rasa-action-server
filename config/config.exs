use Mix.Config


config :rasa_action_server,
       port: 4000,
       redirect_url: "http://localhost:4000/bot"

import_config "#{Mix.env()}.exs"