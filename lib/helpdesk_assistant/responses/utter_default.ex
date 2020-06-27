defmodule HelpdeskAssistant.Responses.UtterDefault do
  use  RasaSDK.Responses.Response
  def simple_text(), do:  "I didn't quite understand that. Could you rephrase?"
end