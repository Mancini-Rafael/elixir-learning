defmodule GreeterModified do
  def greet do
    name = IO.gets("What is your name? ") |> to_string()
    if name == "Alice" or name == "Bob" do
      IO.puts("Hello #{name}")
    else
      IO.puts("I won't say Hi to you!")
    end
  end
end
