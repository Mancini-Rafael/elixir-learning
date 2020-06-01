defmodule GreeterModifiedTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "Prompts the user for his name and greets the user if the name is valid" do
    assert capture_io([input: "Alice", capture_prompt: true],
      fn -> GreeterModified.greet() end
    ) == "What is your name? Hello Alice\n"
    assert capture_io([input: "Bob", capture_prompt: true],
      fn -> GreeterModified.greet() end
    ) == "What is your name? Hello Bob\n"
  end
  test "Prompts the user for his name and does not greet the user if the name is invalid" do
    assert capture_io([input: "Joe", capture_prompt: true],
      fn -> GreeterModified.greet() end
    ) == "What is your name? I won't say Hi to you!\n"
  end
end
