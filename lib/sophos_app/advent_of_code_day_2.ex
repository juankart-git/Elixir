defmodule SophosApp.AdventOfCode.Day2 do

  def exec(values) do
    String.split(values, "x")
    |> Enum.map(&String.to_integer/1)
    |> areaSup()
  end

  defp areaSup([l, w, h]) do
    area1 = l*w
    area2 = w*h
    area3 = h*l
    minor_area = Enum.min([area1, area2, area3])
    Enum.sum([area1, area2, area3]) * 2 + minor_area
  end

end
