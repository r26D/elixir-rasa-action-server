defmodule HelpdeskAssistant do
  # This is an implementation of the action for for the helpdesk assistant from the Rasa example.
  # A modified version to work with this is available at https://github.com/r26D/helpdesk-assistant

  def actions do
    {:ok, modules} = :application.get_key(Application.get_application(__MODULE__), :modules)
    {
      :helpdesk_assistant,
      modules
      |> Enum.filter(&String.starts_with?(Atom.to_string(&1), "#{__MODULE__}.Forms."))
    }
  end

  def responses do
    {:ok, modules} = :application.get_key(Application.get_application(__MODULE__), :modules)
    {
      :helpdesk_assistant,
      modules
      |> Enum.filter(&String.starts_with?(Atom.to_string(&1), "#{__MODULE__}.Responses."))
    }
  end


end