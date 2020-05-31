defmodule GreeterModifiedTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest GreeterModified

  test "greets the user if the name is valid" do
    assert capture_io(fn -> GreeterModified.greet("Alice") end) == "Hello Alice\n"
    assert capture_io(fn -> GreeterModified.greet("Bob") end) == "Hello Bob\n"
  end
  test "does not greet the user if the name is invalid" do
    assert capture_io(fn -> GreeterModified.greet("Joe") end) == "I won't say Hi to you!\n"
  end
end
