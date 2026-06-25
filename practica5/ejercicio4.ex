defmodule Main do
  def main do
    [_, k | l] =
      IO.gets("Introduce los datos: ")
      |> String.split()
      |> Enum.map(&String.to_integer/1)
    l
    |> Enum.sort(:desc)
    |> Enum.take(k)
    |> Enum.sum()
    |> IO.puts()
  end
end

Main.main()
