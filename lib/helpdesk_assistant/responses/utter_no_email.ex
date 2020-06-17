defmodule HelpdeskAssistant.Responses.UtterNoEmail do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
  alias RasaNLG.Model.Response, as: ResponseModel
  use  Response

  def respond(%Context{} = context) do
    context
    |> set_response(%ResponseModel{text: "Sorry, \"{email}\" isn't in our incident management system. Please try again."})
  end
end