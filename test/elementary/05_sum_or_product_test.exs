defmodule SumOrProductTest do
  use ExUnit.Case
  import ExUnit.CaptureIO


  test "correctly sums the values" do
    assert capture_io([input: "sum\n10", capture_prompt: false],
      fn -> SumOrProduct.operate() end ) == "The result is 55\n"
  end
  test "correctly multiplies the values" do
    assert capture_io([input: "multiply\n10", capture_prompt: false],
      fn -> SumOrProduct.operate() end ) == "The result is 3628800\n"
  end
  test "correctly raises errors" do
    assert capture_io([input: "multiply\nabc", capture_prompt: false],
      fn -> SumOrProduct.operate() end ) == "This value is not a valid integer\n"
  end
end
