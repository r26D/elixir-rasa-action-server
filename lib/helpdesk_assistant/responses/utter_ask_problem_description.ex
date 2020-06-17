defmodule HelpdeskAssistant.Responses.UtterAskProblemDescription do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
  alias RasaNLG.Model.Response, as: ResponseModel
  use  Response

  def respond(%Context{} = context) do
    context
    |> set_response(%ResponseModel{text: "What is the problem description for the issue?"})
  end
end