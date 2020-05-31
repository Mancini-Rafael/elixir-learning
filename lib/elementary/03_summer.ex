defmodule Summer do
  @moduledoc """
    Documentation for `Summer`
  """


  def sum_with_recursion([]), do: 0
  def sum_with_recursion([h|t]) do
    h + sum_with_recursion(t)
  end

  def sum_with_enum(list), do: Enum.sum(list)

end