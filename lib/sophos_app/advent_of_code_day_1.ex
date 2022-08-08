defmodule SophosApp.AdventOfCode.Day1 do

  alias SophosApp.MyList
  import String, only: [split: 3]

  def exec(instructions) do
    instructions
    |> split("", trim: true)
    |> evaluate(0)
  end

  defp evaluate([], floor), do: floor

  defp evaluate([h | t], floor) do
    evaluate(t, walk(floor, h))
  end

  defp walk(floor, "("), do: floor + 1
  defp walk(floor, ")"), do: floor - 1

  def exec_2(instructions) do
    fun = fn
      ")" -> -1
      "(" -> 1
    end

    instructions
    |> String.split("", trim: true)
    |> Enum.map(fun)
    |> sum(0, 0)
  end

  def sum([h | t], acc, index)when acc != -1, do: sum(t, acc + h, index + 1)
  def sum(list, acc, index) when list == [] or acc == -1, do: index

end
