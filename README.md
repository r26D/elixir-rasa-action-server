# RasaActionServer

The [Rasa framework ](https://rasa.com) is built in Python.

This is a simple app that shows how to use the elixir [rasa-sdk](https://github.com/r26D/rasa-sdk-elixir).

It demonstrates:
* Forms
* NLG - utterance generation
* Namespaced bots - allowing multiple bots to talk to a single server
* Callback request processing



The description of how to serve requests for Rasa is [here ](https://rasa.com/docs/rasa/api/action-server/#action-server)

[The OpenAPI specification ](https://rasa.com/docs/rasa/_static/spec/action-server.yml)


[The base idea for this implementation came from this article ](https://k.lelonek.me/elixir-http-server)
[And this one](https://dev.to/jonlunsford/elixir-building-a-small-json-endpoint-with-plug-cowboy-and-poison-1826)


## Working Example

The code from the HelpAssistant Example from Rasa HQ has been ported
to work with this server. **The ServiceNow API has not been ported**. THis
was mostly to validate how to work with the Rasa API from Elixir.

To make it simple you can check out the fork of [helpdesk-assistant](https://github.com/r26D/helpdesk-assistant)
and run it along side this app.


## Installation


```shell script

mix start

```

