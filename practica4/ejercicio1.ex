defmodule Main do
  def main do
    input = IO.read(:all) |> String.split()
    if input != [] do
      [a, b, c, x] = Enum.map(input, &String.to_integer/1)
      resultado =
        for i <- 0..a,
            j <- 0..b,
            k <- 0..c,
            500 * i + 100 * j + 50 * k == x,
            reduce: 0 do
          acc -> acc + 1
        end
      IO.puts(resultado)
    end
  end
end
Main.main()
