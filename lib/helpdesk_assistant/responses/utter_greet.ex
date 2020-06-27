defmodule HelpdeskAssistant.Responses.UtterGreet do
  use  RasaSDK.Responses.Response
  def simple_text(), do: "Hello"

end