defmodule SummerTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  setup do
    [list: [1,2,3,4,5]]
  end
  
  test "correctly sum using recursion", context do
    assert Summer.sum_with_recursion(context[:list]) == 15
  end
  test "correctly sums using enum module", context do
    assert Summer.sum_with_enum(context[:list]) == 15
  end
end
