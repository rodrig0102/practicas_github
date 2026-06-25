defmodule Main do
  def main do
    [n, y] = IO.gets("Introduce los datos: ") |> String.split() |> Enum.map(&String.to_integer/1)
    try do
      for i<-0..n, j<-0..n-i, k=n-i-j, 10000*i+5000*j+1000*k==y, do: throw "#{i} #{j} #{k}"
      IO.puts("-1 -1 -1")
    catch r ->
      IO.puts(r)
    end
  end
end
Main.main()
