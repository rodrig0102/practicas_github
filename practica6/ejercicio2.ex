defmodule Main do
    def main do
        [n|t] =
            IO.gets("Introduce los datos: ")
            |> String.split()
            |> Enum.map(&String.to_integer/1)
        p=Enum.take(t,n)
        q=Enum.drop(t,n)
        s=perm(Enum.to_list(1..n))
        IO.puts(abs(Enum.find_index(s,&(&1==p))-Enum.find_index(s,&(&1==q))))
    end
    def perm([]),do: [[]]
    def perm(l),do: for(h<-l,t<-perm(l--[h]),do: [h|t])
end

Main.main()
