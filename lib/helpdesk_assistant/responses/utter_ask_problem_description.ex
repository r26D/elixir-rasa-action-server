defmodule HelpdeskAssistant.Responses.UtterAskProblemDescription do
  use  RasaSDK.Responses.Response
  def simple_text(), do:  "What is the problem description for the issue?"
end