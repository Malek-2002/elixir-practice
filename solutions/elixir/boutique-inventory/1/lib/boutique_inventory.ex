defmodule BoutiqueInventory do
  def sort_by_price(inventory) do
    Enum.sort_by(inventory, fn piece -> piece[:price] end)
  end

  def with_missing_price(inventory) do
    Enum.filter(inventory, fn piece -> piece[:price] == nil end)
  end

  def update_names(inventory, old_word, new_word) do
    Enum.map(inventory, fn piece ->
      updated_name = String.replace(piece[:name], old_word, new_word)
      %{piece | name: updated_name}
    end)  
  end

def increase_quantity(item, count) do
  new_quantities =
    Enum.map(item.quantity_by_size, fn {size, qty} ->
      {size, qty + count}
    end)
    |> Map.new()

  %{item | quantity_by_size: new_quantities}
end

  def total_quantity(item) do
    Enum.reduce(item.quantity_by_size, 0, fn {_size, qty}, acc ->acc + qty end)
  end
end
