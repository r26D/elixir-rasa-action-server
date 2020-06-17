defmodule HelpdeskAssistant.Responses.UtterHelp do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
  alias RasaNLG.Model.Response, as: ResponseModel
  use  Response

  def respond(%Context{} = context) do
    context
    |> set_response(%ResponseModel{text: "I can help you open a service request ticket.
      You can ask me things like \"Open an incident\", \"Help me reset my password\", or
      \"I'm having a issue with my email.\""})
  end
end