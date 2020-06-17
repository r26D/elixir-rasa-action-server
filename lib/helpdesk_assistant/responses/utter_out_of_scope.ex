defmodule HelpdeskAssistant.Responses.UtterOutOfScope do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
  alias RasaNLG.Model.Response, as: ResponseModel
  use  Response

  def respond(%Context{} = context) do
    context
    |> set_response(%ResponseModel{text: "Sorry, I'm not sure how to respond to that. Type \"help\" for assistance."})
  end
end