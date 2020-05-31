defmodule GreeterModified do
  @moduledoc """
  Documentation for `GreeterModified`.
  """

  @doc """
  GreeterModified.greet(name) -> Greets if name is 'Alice' or 'Bob'
  -> GreeterModified.greet('Alice') # Hello Alice
  -> GreeterModified.greet('Joe') # I won't say Hi to you!
  """
  def greet(name) do
    if to_string(name) == "Alice" or to_string(name) == "Bob" do
      IO.puts("Hello #{name}")
    else
      IO.puts("I won't say Hi to you!")
    end
  end
end
