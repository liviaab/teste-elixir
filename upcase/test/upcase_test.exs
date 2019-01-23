defmodule UpcaseTest do
  use ExUnit.Case
  doctest Upcase

	test "starting the service" do 
		assert {:ok, pid} = Upcase.start
		assert is_pid(pid)
	end

  test "sendind a string to be upcased" do
		{:ok, pid} = Upcase.start
		assert {:ok, "FOO"} = Upcase.upcase(pid, "foo")
	end
end
