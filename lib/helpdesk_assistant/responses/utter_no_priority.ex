defmodule HelpdeskAssistant.Responses.UtterNoPriority do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
  alias RasaNLG.Model.Response, as: ResponseModel
  use  Response

  def respond(%Context{} = context) do
    context
    |> set_response(%ResponseModel{text: "Sorry \"{priority}\" is not a valid priority. Please try again."})
  end
end