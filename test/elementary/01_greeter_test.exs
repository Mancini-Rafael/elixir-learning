defmodule GreeterTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "Prompts the user for his name, and greets him" do
    assert capture_io([input: "Rafael", capture_prompt: true], 
      fn -> Greeter.greet() end) == "What is your name? Hello Rafael\n"
  end
end
