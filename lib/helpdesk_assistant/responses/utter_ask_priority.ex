defmodule HelpdeskAssistant.Responses.UtterAskPriority do
  alias RasaNLG.Responses.{
    Response,
    Context
    }
  alias RasaNLG.Model.Response, as: ResponseModel
  alias RasaNLG.Model.Button
  use  Response

  def respond(%Context{} = context) do
    buttons = [
      %Button{title: "low", payload: "/inform{\"priority\":\"low\"}"},
      %Button{title: "medium", payload: "/inform{\"priority\":\"medium\"}"},
      %Button{title: "high", payload: "/inform{\"priority\":\"high\"}"}
    ]
    context
    |> set_response(%ResponseModel{text: "What is the priority of this issue?", buttons: buttons})
  end
end