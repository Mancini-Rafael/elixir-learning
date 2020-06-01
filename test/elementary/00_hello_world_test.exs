defmodule HelloWorldTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "greets the world" do
    assert capture_io(fn ->
             HelloWorld.hello_world()
           end) == "Hello World\n"
  end
end
