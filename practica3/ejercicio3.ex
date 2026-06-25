defmodule Main do
  def main do
    _n = IO.read(:line)
    numeros =
      IO.read(:line)
      |> String.split()
      |> Enum.map(&String.to_integer/1)

    IO.puts(contar_operaciones(numeros, 0))
  end
  defp contar_operaciones(lista, contador) do
    todos_pares = Enum.all?(lista, fn x -> rem(x, 2) == 0 end)

    if todos_pares do
      nueva_lista = Enum.map(lista, fn x -> div(x, 2) end)
      contar_operaciones(nueva_lista, contador + 1)
    else
      contador
    end
  end
end

Main.main()
