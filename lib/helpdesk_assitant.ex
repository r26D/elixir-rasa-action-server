defmodule HelpdeskAssistant do
  # This is an implementation of the action for for the helpdesk assistant from the Rasa example.
  # A modified version to work with this is available at https://github.com/r26D/helpdesk-assistant
  def actions, do: [HelpdeskAssistant.OpenIncidentForm]
end