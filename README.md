# RasaActionServer

The [Rasa framework ](https://rasa.com) is built in Python. Custom actions for the chat system
can be built in any language as long as there is an action server in that language.

David White built an openapi version of the protocl (https://github.com/whitedr/rasa-sdk-elixir)

This project will be a simple server that runs the sdk

The description of how to serve requests for Rasa is [here ](https://rasa.com/docs/rasa/api/action-server/#action-server)

[The OpenAPI specification ](https://rasa.com/docs/rasa/_static/spec/action-server.yml)


[The base idea for this implementation came from this article ](https://k.lelonek.me/elixir-http-server)
[And this one](https://dev.to/jonlunsford/elixir-building-a-small-json-endpoint-with-plug-cowboy-and-poison-1826)


## Working Example

The code from the HelpAssistant Example from Rasa HQ has been ported
to work with this server. **The ServiceNow API has not been ported**. THis
was mostly to validate how to work with the Rasa API from Elixir.



## Installation


```shell script

mix start

```

