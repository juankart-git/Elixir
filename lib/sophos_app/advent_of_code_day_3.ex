
defmodule SophosApp.AdventOfCode.Day1 do

  def deliveryPresent(route) do
    String.split(route,"", trim: true)
    |> routes()
    |> move()
    |> Enum.uniq()
    |> Enum.count()
    |> IO.inspect()
  end

  def routes(route) do
     Enum.map(route, fn
        ""  -> [0,0]
        "^" -> [0,1]
        "v" -> [0,-1]
        ">" -> [1,0]
        "<" -> [-1,0]
      end)
    end

    defp move(route) do
      Enum.scan(route, fn ([x,y], [z,w]) -> [x+z,y+w] end)
    end

    def deliveryPresent2(route) do
      String.split(route,"")
      |>routes()
      |>stepBySanta()
    end

    defp stepBySanta(route) do
      santaRoute = (
        route
        |> Enum.with_index()
        |> Enum.map(fn {num,index} ->
          cond do
            rem(index, 2) == 1 -> num
            :true -> ""
          end
        end)
        |> Enum.filter(fn x -> x != "" end)
      )

      roboSantaRoute = (
        route
        |> Enum.with_index()
        |> Enum.map(fn {num,index} ->
          cond do
            rem(index, 2) == 0 -> num
            :true -> ""
          end
        end)
        |> Enum.filter(fn x -> x != "" end)
      )

      santaMove = move(santaRoute)
      roboSantaMove = move(roboSantaRoute)

      Enum.concat(santaMove,roboSantaMove)
      |>Enum.uniq()
      |>Enum.count()

    end
end
