defmodule HelpdeskAssistant.CallbackHandler do
  alias RasaSDK.Callbacks.Context
  alias RasaSDK.Model.CallbackResponse

  def run(%Context{} = context) do
    IO.puts("I got a callback!")
    IO.inspect(context.request)
    context
    |> Context.set_response(
         %CallbackResponse{
           message: "success"
         }
       )
  end
end