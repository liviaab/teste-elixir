defmodule RecursaoTest do
  use ExUnit.Case
  doctest Recursao

  test "greets the world" do
    assert Recursao.hello() == :world
  end
end
