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
    |> evaluate(0, 0)
  end

  def evaluate([h | t], accum, index)when accum != -1, do: evaluate(t, accum + h, index + 1)
  def evaluate(list, accum, index) when list == [] or accum == -1, do: index

end
