defmodule Main do
  def main do
    [_ | t] =
      IO.gets("Introduce los datos: ")
      |> String.split()
      |> Enum.map(&String.to_integer/1)
    {m, _, _} =
      Enum.reduce(t, {0, 0, -1}, fn x, {m, c, p} ->
        if x <= p do
          {max(m, c + 1), c + 1, x}
        else
          {m, 0, x}
        end
      end)

    IO.puts(m)
  end
end

Main.main()
