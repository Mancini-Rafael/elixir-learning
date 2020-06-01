defmodule SumOrProduct do
  def operate do
    operation = IO.gets("What is the type of operation? (sum | multiply) ") 
      |> to_string() 
      |> String.trim()
    cond do
      operation == "sum" -> run_sum()
      operation == "multiply" -> run_mult()
      true -> IO.puts("This option is not available")
    end
  end

  def run_sum() do
    number = IO.gets("What is the number? ") |> Integer.parse()
    cond do
      number != :error -> 
        (1..elem(number, 0)) 
        |> Enum.to_list() 
        |> Enum.sum() 
        |> print_value()
      true -> IO.puts("This value is not a valid integer")
    end
  end
  def run_mult() do
    number = IO.gets("What is the number? ") |> Integer.parse()
    cond do
      number != :error -> 
        (1..elem(number, 0)) |> Enum.to_list() |> multiply_numbers() |> print_value()
      true -> IO.puts("This value is not a valid integer")
    end
  end


  def multiply_numbers([]) do
    1
  end
  def multiply_numbers([h | t]) do
    h * multiply_numbers(t)
  end

  def print_value(n) do
    IO.puts("The result is #{n}")
  end

end