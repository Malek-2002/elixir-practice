defmodule BirdCount do
  def today([]), do: nil
  def today(list) do
    [today | _] = list
    today
  end
  
  def increment_day_count([]), do: [1]  
  def increment_day_count(list) do
    [today | rest] = list
    [today + 1 | rest]
  end

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?(list) do
      [first | rest] = list
      cond do
        first == 0 -> true
        true -> has_day_without_birds?(rest)
      end
  end

  def total([]), do: 0
  def total(list) do
    [first | rest] = list
    first + total(rest)
  end

  def busy_days([]), do: 0
  def busy_days(list) do
    [first | rest] = list
    cond do
      first >= 5 -> 1 + busy_days(rest)
      true -> busy_days(rest)
    end
  end
end
