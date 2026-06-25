defmodule Main do
  def main do
    input =
      IO.gets("Introduce los datos: ")
      |> String.split()
      |> Enum.map(&String.to_integer/1)

    case input do
      [n | coords] ->
        towns = Enum.chunk_every(coords, 2)
        total_dist =
          permute(towns)
          |> Enum.map(&path_length/1)
          |> Enum.sum()

        num_paths = fact(n)
        IO.puts(total_dist / num_paths)
      _ ->
        :ok
    end
  end
  def permute([]), do: [[]]
  def permute(list), do: for(h <- list, t <- permute(list -- [h]), do: [h | t])

  def path_length([_]), do: 0.0
  def path_length([[x1, y1], [x2, y2] | tail]) do
    dist = :math.sqrt(:math.pow(x1 - x2, 2) + :math.pow(y1 - y2, 2))
    dist + path_length([[x2, y2] | tail])
  end
  def fact(0), do: 1
  def fact(n), do: n * fact(n - 1)
end
Main.main()
