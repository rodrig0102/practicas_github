defmodule Main do
  def main do
    input = IO.read(:all) |> String.split()
    if input != [] do
      [_n | cartas_str] = input
      cartas = cartas_str
               |> Enum.map(&String.to_integer/1)
               |> Enum.sort(:desc)
      {alice, bob} =
        cartas
        |> Enum.with_index()
        |> Enum.reduce({0, 0}, fn {val, idx}, {a, b} ->
          if rem(idx, 2) == 0, do: {a + val, b}, else: {a, b + val}
        end)
      IO.puts(alice - bob)
    end
  end
end
Main.main()
