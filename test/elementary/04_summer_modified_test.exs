defmodule SummerModifiedTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  
  test "correctly sums the values" do
    assert capture_io([input: "15", capture_prompt: false],
      fn -> SummerModified.sum() == "The sum is 120\n" end
    )
  end
  test "shows proper error for invalid values" do
    assert capture_io([input: "abc", capture_prompt: false],
      fn -> SummerModified.sum() == "This value is not a valid integer\n" end
    )
  end
end
