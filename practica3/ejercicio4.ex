defmodule Main do
  def main do
    n = String.to_integer(String.trim(IO.read(:line)))
    a = String.to_integer(String.trim(IO.read(:line)))
    if rem(n, 500) <= a do
      IO.puts("Yes")
    else
      IO.puts("No")
    end
  end
end
Main.main()
