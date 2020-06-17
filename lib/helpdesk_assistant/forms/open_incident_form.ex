defmodule HelpdeskAssistant.Forms.OpenIncidentForm do
  alias RasaSdk.Actions.{
    Context,
    Events,
    FormAction
    }
  use  FormAction

  alias RasaSdk.Model.{Request, Tracker}


  def name(), do: "open_incident_form"

  def required_slots(_action), do: ["email", "priority", "problem_description", "incident_title"]


  def slot_mappings() do

    %{
      "email" => from_entity("email"),
      "priority" => from_entity("priority"),
      "problem_description" => [
                                     from_text([intent: ["password_reset", "problem_email", "inform"]]),
                                      from_text()],
      "incident_title" => [
        from_trigger_intent("Problem resetting password", [intent: "password_reset"]),
        from_trigger_intent("Problem with email", [intent: "problem_email"]),
        from_text([intent: ["password_reset", "problem_email", "inform"]]),
        from_text()
      ]
    }


  end
  defp priority_db(), do: ["low", "medium", "high"]

  def validate_slot(context, "email", value) do
    context
    |> add_event(slot_set("email", value))
    #did not implement the service now code
  end
  def validate_slot(context, "priority", value) do
    filtered_value = value
                     |> String.downcase
    if Enum.member?(priority_db(), filtered_value) do
      context
      |> add_event(slot_set("priority", filtered_value))
    else
      context
      |> utter_message([template: "utter_no_priority"])
      |> add_event(slot_set("priority", nil))
    end
  end
  def validate_slot(context, slot, value) do
    add_event(context, slot_set(slot, value))
  end

  def submit(
        %Context{
          request: %Request{
            tracker: %Tracker{
              slots: slots
            }
          }
        } = context
      ) do

    priority = Map.get(slots, "priority")
    email = Map.get(slots, "email")
    problem_description = Map.get(slots, "problem_description")
    incident_title = Map.get(slots, "incident_title")
    #    snow_priority = case priority do
    #      "low" -> "3"
    #      "medium" -> "2"
    #      _ -> "1"
    #    end
    message = "An incident with the following details would be opened
     if ServiceNow was connected:
          email: #{email}
          problem description: #{problem_description}
          title: #{incident_title}
          email: #{priority}
         An incident with the following details would be opened"
    context
    |> utter_message([text: message])
    |> add_event(Events.all_slots_reset())
  end

end

