defmodule Main do
  def main do
    input = IO.read(:all) |> String.split()
    if input != [] do
      [_n | d] = input
      res = d
            |> Enum.uniq()
            |> Enum.count()
      IO.puts(res)
    end
  end
end
Main.main()
