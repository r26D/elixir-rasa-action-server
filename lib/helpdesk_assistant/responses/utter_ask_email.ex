defmodule HelpdeskAssistant.Responses.UtterAskEmail do
  use  RasaSDK.Responses.Response

  def simple_text(), do: "What is your email address to lookup for creating the incident?"
end