defmodule HelpdeskAssistant.Responses.UtterNoPriority do
  use  RasaSDK.Responses.Response
  def simple_text(), do: "Sorry \"{priority}\" is not a valid priority. Please try again."
end