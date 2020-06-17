defmodule HelpdeskAssistant.Responses.UtterIamabot do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
  alias RasaNLG.Model.Response, as: ResponseModel
  use  Response

  def respond(%Context{} = context) do
    context
    |> set_response(%ResponseModel{text: "I am a bot, powered by Rasa."})
  end
end