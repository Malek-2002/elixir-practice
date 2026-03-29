defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter({:milliliter, vol}),  do: {:milliliter, vol}
  def to_milliliter({:cup, vol}),  do: {:milliliter, 240 * vol}
  def to_milliliter({:fluid_ounce, vol}),  do: {:milliliter, 30 * vol}
  def to_milliliter({:teaspoon, vol}),  do: {:milliliter, 5 * vol}
  def to_milliliter({:tablespoon, vol}),  do: {:milliliter, 15 * vol}

  def from_milliliter(volume_pair, :milliliter), do: to_milliliter(volume_pair)
  def from_milliliter(volume_pair, :cup), do: {:cup, get_volume(to_milliliter(volume_pair)) / 240}
  def from_milliliter(volume_pair, :fluid_ounce), do: {:fluid_ounce, get_volume(to_milliliter(volume_pair)) / 30}
  def from_milliliter(volume_pair, :teaspoon), do: {:teaspoon, get_volume(to_milliliter(volume_pair)) / 5}
  def from_milliliter(volume_pair, :tablespoon), do: {:tablespoon, get_volume(to_milliliter(volume_pair)) / 15}

  def convert(volume_pair, :milliliter), do: to_milliliter(volume_pair)
  def convert(volume_pair, :cup), do: {:cup, get_volume(to_milliliter(volume_pair)) / 240}
  def convert(volume_pair, :fluid_ounce), do: {:fluid_ounce, get_volume(to_milliliter(volume_pair)) / 30}
  def convert(volume_pair, :teaspoon), do: {:teaspoon, get_volume(to_milliliter(volume_pair)) / 5}
  def convert(volume_pair, :tablespoon), do: {:tablespoon, get_volume(to_milliliter(volume_pair)) / 15}


end
