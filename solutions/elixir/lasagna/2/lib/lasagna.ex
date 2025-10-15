defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(curr_mins), do: expected_minutes_in_oven() - curr_mins
  
  def preparation_time_in_minutes(layers), do: 2 * layers
  
  def total_time_in_minutes(layers, curr_mins), do: preparation_time_in_minutes(layers) + curr_mins
  
  def alarm(), do: "Ding!"
end
