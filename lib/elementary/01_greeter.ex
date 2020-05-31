defmodule Greeter do
  @moduledoc """
  Documentation for `HelloWorld`.
  """

  @doc """
  HelloWorld.hello_word
  -> 'Hello World'
  """
  def greet(name) do
    IO.puts("Hello #{name}")
  end
end
