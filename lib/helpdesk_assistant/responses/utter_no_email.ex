defmodule HelpdeskAssistant.Responses.UtterNoEmail do
  use  RasaSDK.Responses.Response
  def simple_text(), do:  "Sorry, \"{email}\" isn't in our incident management system. Please try again."
end