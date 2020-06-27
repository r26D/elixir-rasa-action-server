defmodule HelpdeskAssistant.Responses.UtterWelcome do
  use  RasaSDK.Responses.Response
  def simple_text(), do: "You're welcome!"

end