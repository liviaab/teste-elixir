defmodule HelloWorldTest do
  use ExUnit.Case
  doctest HelloWorld

  test "greets the world" do
    assert HelloWorld.hello() == :world
  end
  test "division" do
    {:ok, result} = HelloWorld.div(2, 1)
    assert result == 2.0
  end
  test "division by zero" do
    {:error, err} = HelloWorld.div(1, 0)
    assert err == "attempt at division by zero"
  end
  
  test "pipes and strings" do
    # If we import the `String` module we can use its functions without
    # qualifying them fully - so we get `upcase` instead of the more-verbose
    # `String.upcase`
    import String

    val =
      "josh"
        |> reverse
        |> capitalize
        |> reverse

    assert val == "josH"
  end
end
