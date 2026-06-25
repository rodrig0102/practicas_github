defmodule Main do
  def main do
    input = IO.read(:all) |> String.split()
    if input != [] do
      [n, a, b] = Enum.map(input, &String.to_integer/1)
      res = Enum.reduce(1..n, 0, fn x, acc ->
        s = x |> Integer.digits() |> Enum.sum()
        if s >= a and s <= b, do: acc + x, else: acc
      end)
      IO.puts(res)
    end
  end
end
Main.main()
