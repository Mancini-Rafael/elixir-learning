defmodule GreeterTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Greeter

  test "greets the user with his name" do
    assert capture_io(fn -> Greeter.greet("Rafael") end) == "Hello Rafael\n"
  end
end
