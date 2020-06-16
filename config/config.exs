use Mix.Config


config :rasa_action_server,
       port: 5055,
       redirect_url: "http://localhost:4000/rasa_action_server"

import_config "#{Mix.env()}.exs"