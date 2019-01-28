defmodule Recursao do
  @moduledoc """
  Documentation for Recursao.
  """
	def contar([]), do: 0
	def contar([_head | tail]) do 
		1 + contar(tail)
	end
end
