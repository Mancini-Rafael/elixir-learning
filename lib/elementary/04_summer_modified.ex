defmodule SummerModified do
  def sum do
    number = IO.gets("What is the number? ") |> Integer.parse()

    cond do
      number != :error ->
        1..elem(number, 0)
        |> Enum.to_list()
        |> Enum.sum()
        |> print_sum()

      true ->
        IO.puts("This value is not a valid integer")
    end
  end

  def print_sum(n) do
    IO.puts("The sum is #{n}")
  end
end
