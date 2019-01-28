defmodule ConfigsTest do
  use ExUnit.Case
  doctest Configs

  test "greets the world" do
    assert Configs.hello() == :world
  end
end
