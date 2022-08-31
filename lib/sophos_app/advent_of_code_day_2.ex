# Dia 2

defmodule SophosApp.AdventOfCode.Day2 do

  # Ejercicio 1
  
  def squareFeet(string) do
    String.split(string,"\n")
    |> Enum.map(fn x -> String.split(x,"x", trim: true) end)
    |> Enum.map(fn x-> Enum.map(x, fn x -> String.to_integer(x) end) end)
    |> Enum.map(fn [x,y,z] -> {(2*x*y + 2*y*z + 2*x*z), Enum.min([x*y,y*z,z*x])} end)
    |> Enum.map(fn {x,y} -> x + y  end)
    |> Enum.reduce(fn x,acc -> x + acc end)
    |> IO.puts
  end
  
  # Ejercicio 2
  
  def ribbon(string) do
    String.split(string,"\n")
    |> Enum.map(fn x -> String.split(x,"x", trim: true) end)
    |> Enum.map(fn x-> Enum.map(x, fn x -> String.to_integer(x) end) end)
    |> Enum.map(fn [x,y,z] -> {(x*y*z), Enum.min([2*(x+y),2*(y+z),2*(z+x)])} end)
    |> Enum.map(fn {x,y} -> x + y  end)
    |> Enum.reduce(fn x,acc -> x + acc end)
    |> IO.puts
  end
  
end


