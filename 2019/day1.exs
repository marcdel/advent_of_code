defmodule Day1 do
  def fuel_counter(mass) do
    div(mass, 3) - 2
  end

  def total_fuel_consumption(masses) do
    masses
    |> Enum.map(&__MODULE__.fuel_counter/1)
    |> Enum.sum()
  end
end
