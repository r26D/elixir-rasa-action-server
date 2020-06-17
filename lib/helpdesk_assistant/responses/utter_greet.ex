defmodule HelpdeskAssistant.Responses.UtterGreet do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
    alias RasaNLG.Model.Response, as: ResponseModel
  use  Response

  def respond(%Context{} = context) do
    context
    |> set_response(%ResponseModel{text: "Hello"})
  end
end