defmodule Main do
  def main do
    [_ | s] =
      IO.gets("Introduce los datos: ")
      |> String.split()
    s
    |> MapSet.new()
    |> MapSet.size()
    |> IO.puts()
  end
end

Main.main()
