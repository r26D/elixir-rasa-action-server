defmodule HelpdeskAssistant.Responses.UtterAskIncidentTitle do

  use  RasaSDK.Responses.Response

  def simple_text(), do: "What should we use for the title of this incident?"

end