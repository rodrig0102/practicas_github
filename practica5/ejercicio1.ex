defmodule Main do
  def main do
    num =
      IO.gets("Introduce un numero: ")
      |> String.trim()
      |> String.to_integer()

    root = trunc(:math.sqrt(num))
    if root * root == num do
      IO.puts("Yes")
    else
      IO.puts("No")
    end
  end
end

Main.main()
