defmodule RasaActionServer.Application do
  @moduledoc "OTP Application specification for WebhookProcessor"

  use Application
  require Logger
  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Use Plug.Cowboy.child_spec/3 to register our endpoint as a plug
      Plug.Cowboy.child_spec(
        scheme: :http,
        plug: RasaActionServer.Endpoint,
        options: [port: port() ]
      )
    ]
    Logger.info("Starting server at http://localhost:#{port()}/")
    register_all_actions()
    register_all_responses()
    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RasaActionServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
  defp register_all_actions do
    RasaSdk.Actions.Registry.register_actions(HelpdeskAssistant.actions())

  end
  defp register_all_responses do
    RasaNLG.Responses.Registry.register_responses(HelpdeskAssistant.responses())

  end
  defp port(), do: Application.get_env(:rasa_action_server, :port)
end