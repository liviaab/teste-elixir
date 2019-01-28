defmodule Configs do
  @moduledoc """
  Documentation for Configs.
  """
	@prefix Application.get_env(:app, :prefix)

	def say(str) do
		Application.get_env(:app, :prefix) <> str
	end
end
