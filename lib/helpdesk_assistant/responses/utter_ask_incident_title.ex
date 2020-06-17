defmodule HelpdeskAssistant.Responses.UtterAskIncidentTitle do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
  alias RasaNLG.Model.Response, as: ResponseModel
  use  Response

  def respond(%Context{} = context) do
    context
    |> set_response(%ResponseModel{text: "What should we use for the title of this incident?"})
  end
end