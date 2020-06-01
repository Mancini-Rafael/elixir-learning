defmodule Greeter do
  def greet do
    name = IO.gets("What is your name? ")
    IO.puts("Hello #{name}")
  end
end
