defmodule HelpdeskAssistant.Responses.UtterGoodby do
  use  RasaSDK.Responses.Response

  def simple_text(), do: "Bye"

end