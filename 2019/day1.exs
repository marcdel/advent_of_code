defmodule Day1 do
  def fuel_counter(mass) when mass < 0, do: 0

  def fuel_counter(mass) do
    fuel = div(mass, 3) - 2
    additional_fuel = fuel_counter(fuel)

    if (additional_fuel >= 0) do
      fuel + additional_fuel
    else
      fuel
    end
  end

  def total_fuel_consumption(masses) do
    masses
    |> Enum.map(&fuel_counter/1)
    |> Enum.sum()
  end
end
