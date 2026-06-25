defmodule Palindromo do
  def run(lista) do
    es_palindromo=fn cadena ->
      aux = cadena |> String.downcase |> String.replace(" ","")
      aux == aux |> String.reverse
    end

    lista
    |> Enum.filter(es_palindromo)
    |> Enum.count
    |> IO.puts
  end
end
Palindromo.run(["anita lava la tina","oruro","Bolivia","amad a la dama"])
