defmodule RasaActionServerTest do
  use ExUnit.Case
  doctest RasaActionServer

  test "greets the world" do
    assert RasaActionServer.hello() == :world
  end
end
