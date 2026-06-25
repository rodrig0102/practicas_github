defmodule Main do
  import Bitwise
  def main, do: IO.puts(f(0, IO.gets("Introduce un numero: ") |> String.trim() |> String.to_integer(), 0))
  def f(s, n, _) when s > n, do: 0
  def f(s, n, m), do: (if(m == 7, do: 1, else: 0)) + f(s * 10 + 3, n, m ||| 1) + f(s * 10 + 5, n, m ||| 2) + f(s * 10 + 7, n, m ||| 4)
end

Main.main()
