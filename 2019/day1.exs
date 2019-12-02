defmodule Day1 do
  def fuel_counter(mass) when mass < 0, do: 0

  def fuel_counter(mass) do
    fuel = div(mass, 3) - 2
    add_additional_fuel(fuel, fuel_counter(fuel))
  end

  def total_fuel_consumption(masses) do
    masses
    |> Enum.map(&fuel_counter/1)
    |> Enum.sum()
  end

  defp add_additional_fuel(fuel, additional_fuel) when additional_fuel < 0, do: fuel

  defp add_additional_fuel(fuel, additional_fuel) do
    fuel + additional_fuel
  end
end
