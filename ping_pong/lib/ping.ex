defmodule Ping do
  def start do
    loop()
  end

  def start do
    # receive pattern matches on a series of potential messages and runs some
    # code when it receives that message. Here we'll just send a message to the
    # pid we're sent.
    receive do
      {:pong, from} -> send(from, {:ping, self()})
    end
  end
end
