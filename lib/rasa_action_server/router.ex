
defmodule RasaActionServer.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  @content_type "application/json"

  get "/" do
    conn
    |> put_resp_content_type(@content_type)
    |> send_resp(200, message())
  end
  post "/rasa_action_server" do
    conn
    |> put_resp_content_type(@content_type)
    |> send_resp(200, message())
  end
  match _ do
    send_resp(conn, 404, "Requested page not found!")
  end

  defp message do
    Jason.encode!(%{

      text: "This is a Rasa Action Server - your endpoint is  /rasa_action_server"
    })
  end
end