defmodule Rpn do
  @moduledoc """
  Documentation for Reverse Polish Notation module (RPN)
  """

  @doc """
  Hello world.

  ## Examples

      iex> Rpn.hello()
      :world

  """
  def hello do
    :world
  end

	def start do
		Agent.start(fn -> [] end)
	end

	def push(pid, op) do 
		case op do 
			:+ -> Agent.update(pid, fn([ second | [ first | rest ] ]) -> [(first + second) | rest] end)
			:- ->Agent.update(pid, fn([ second | [ first | rest ] ]) -> [(first - second) | rest] end)
			:x -> Agent.update(pid, fn([ second | [ first | rest ] ]) -> [(first * second) | rest] end)
			_ -> Agent.update(pid, fn(x) -> [op | x] end) 	
		end
	end

	def peek(pid) do 
		{:ok, resultado} = Agent.get(pid, fn(x) -> {:ok, x} end)
		resultado
	end

	
end

