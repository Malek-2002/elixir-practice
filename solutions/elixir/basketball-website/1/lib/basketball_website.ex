defmodule BasketballWebsite do
  defp get_data(nil, _rest), do: nil
  defp get_data(data, []), do: data
  defp get_data(data, [first | rest]) do
    get_data(data[first], rest)
  end
  def extract_from_path(data, path) do
    keys = String.split(path, ".")
    get_data(data, keys)
  end
  
  def get_in_path(data, path) do
    keys = String.split(path, ".")
    get_in(data, keys)
  end
end
