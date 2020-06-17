defmodule HelpdeskAssistant.Responses.UtterDefault do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
  alias RasaNLG.Model.Response, as: ResponseModel
  use  Response

  def respond(%Context{} = context) do
    context
    |> set_response(%ResponseModel{text: "I didn't quite understand that. Could you rephrase?"})
  end
end