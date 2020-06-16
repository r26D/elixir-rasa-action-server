defmodule RasaActionServer.Endpoint do
  @moduledoc """
  A Plug responsible for logging request info, parsing request body's as JSON,
  matching routes, and dispatching responses.
  """


  use Plug.Router
  use Plug.Debugger
  use Plug.ErrorHandler
  alias RasaActionServer.Router
  #alias Plug.HTML

  plug(Plug.Logger, log: :debug)
  plug(:match)
  # Using Poison for JSON decoding
  # Note, order of plugs is important, by placing this _after_ the 'match' plug,
  # we will only parse the request AFTER there is a route match.
  plug(Plug.Parsers, parsers: [:json], pass: ["application/json"], json_decoder: Jason)
  # responsible for dispatching responses
  plug(:dispatch)

  alias RasaActionServer.Router


  # A simple route to test that the server is up
  # Note, all routes must return a connection as per the Plug spec.
  get "/ping" do
    send_resp(conn, 200, "pong!")
  end


  forward("/bot", to: Router)
  match _ do
    send_resp(conn, 404, "This URL is not setup for response")
  end
#  match _ do
#    conn
#    |> put_resp_header("location", redirect_url())
#    |> put_resp_content_type("text/html")
#    |> send_resp(302, redirect_body())
#  end
#
#  defp redirect_body do
#    ~S(<html><body>You are being <a href=")
#    |> Kernel.<>(HTML.html_escape(redirect_url()))
#    |> Kernel.<>(~S(">redirected</a>.</body></html>))
#  end
#
#  defp redirect_url, do: Application.get_env(:rasa_action_server, :redirect_url)

  def handle_errors(%{status: status} = conn, %{kind: _kind, reason: _reason, stack: _stack}),
      do: send_resp(conn, status, "Something went wrong")
end