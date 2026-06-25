defmodule Main do
  def main do
    [a, b] = Enum.map(String.split(IO.read(:line)), &String.to_integer/1)
    if rem(a * b, 2) == 0 do
      IO.puts("Even")
    else
      IO.puts("Odd")
    end
  end
end

Main.main()
