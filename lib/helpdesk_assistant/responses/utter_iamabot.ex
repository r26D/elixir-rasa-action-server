defmodule HelpdeskAssistant.Responses.UtterIamabot do
  use  RasaSDK.Responses.Response

  def simple_text(), do:  "I am a bot, powered by Rasa."
end