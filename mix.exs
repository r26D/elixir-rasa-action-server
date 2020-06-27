defmodule RasaActionServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :rasa_action_server,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: applications(Mix.env),
      mod: {RasaActionServer.Application, []}
    ]
  end


  defp applications(:dev), do: applications(:all) ++ [:remix]
  defp applications(_all), do: [:logger]
  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [

      {:rasa_sdk, "~> 0.5"},
      {:tesla, "~> 1.3"},
      {:poison, "~> 3.1"},
      {:jason, "~> 1.2"},
      {:plug_cowboy, "~> 2.0"},
      {:remix, "~> 0.0.1", only: :dev},
      {:credo, "~> 0.10", except: :prod, runtime: false}
    ]
  end
  defp aliases do
    [
      start: "run --no-halt"

    ]
  end
end
