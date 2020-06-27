defmodule HelpdeskAssistant.Responses.UtterAskPriority do
  alias RasaSDK.Responses.{
    Response,
    Context
    }
  alias RasaSDK.Model.NLGResponse
  alias RasaSDK.Model.Button
  use  Response

  def respond(%Context{} = context) do
    buttons = [
      %Button{title: "low", payload: "/inform{\"priority\":\"low\"}"},
      %Button{title: "medium", payload: "/inform{\"priority\":\"medium\"}"},
      %Button{title: "high", payload: "/inform{\"priority\":\"high\"}"}
    ]
    context
    |> set_response(%NLGResponse{text: "What is the priority of this issue?", buttons: buttons})
  end
end