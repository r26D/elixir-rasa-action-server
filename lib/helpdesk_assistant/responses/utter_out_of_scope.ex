defmodule HelpdeskAssistant.Responses.UtterOutOfScope do
  use  RasaSDK.Responses.Response
  def simple_text(), do: "Sorry, I'm not sure how to respond to that. Type \"help\" for assistance."
end