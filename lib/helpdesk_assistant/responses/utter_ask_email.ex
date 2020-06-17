defmodule HelpdeskAssistant.Responses.UtterAskEmail do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
  alias RasaNLG.Model.Response, as: ResponseModel
  use  Response

  def respond(%Context{} = context) do
    context
    |> set_response(%ResponseModel{text: "What is your email address to lookup for creating the incident?"})
  end
end