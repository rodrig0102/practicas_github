defmodule Main do
  import Bitwise
  def main do
    [n, m, x | rest] =
      IO.gets("Introduce los datos: ")
      |> String.split()
      |> Enum.map(&String.to_integer/1)

    books = Enum.chunk_every(rest, m + 1)
    max_mask = (1 <<< n) - 1
    ans =
      Enum.reduce(0..max_mask, -1, fn mask, min_cost ->
        {cost, skills} =
          Enum.reduce(0..(n - 1), {0, List.duplicate(0, m)}, fn i, {acc_c, acc_s} ->
            if (mask >>> i) &&& 1 == 1 do
              [c | s] = Enum.at(books, i)
              {acc_c + c, Enum.zip_with(acc_s, s, &(&1 + &2))}
            else
              {acc_c, acc_s}
            end
          end)
        if Enum.all?(skills, &(&1 >= x)) do
          if min_cost == -1, do: cost, else: min(min_cost, cost)
        else
          min_cost
        end
      end)
    IO.puts(ans)
  end
end

Main.main()
