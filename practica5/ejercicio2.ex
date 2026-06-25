defmodule Main do
  def main do
    n = IO.gets("Introduce un numero: ") |> String.trim() |> String.to_integer()
    Enum.any?(0..div(n, 4), &(rem(n - 4 * &1, 7) == 0))
    |> if(do: "Yes", else: "No")
    |> IO.puts()
  end
end
Main.main()
