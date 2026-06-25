defmodule Main do
  def main do
    entrada = String.trim(IO.read(:line))
    lista = String.graphemes(entrada)
    conteo = Enum.count(lista, fn x -> x == "1" end)
    IO.puts(conteo)
  end
end

Main.main()
