defmodule HelpdeskAssistant.Responses.UtterHelp do
  use  RasaSDK.Responses.Response
  def simple_text(), do:  "I can help you open a service request ticket.
      You can ask me things like \"Open an incident\", \"Help me reset my password\", or
      \"I'm having a issue with my email.\""
end