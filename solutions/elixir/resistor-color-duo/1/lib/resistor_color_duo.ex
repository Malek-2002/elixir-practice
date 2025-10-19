defmodule ResistorColorDuo do
  @doc """
  Calculate a resistance value from two colors
  """
  @spec value(colors :: [atom]) :: integer
  def value(colors) do
    [c1, c2 | _rest] = colors
    10 * digit(c1) + digit(c2)
  end

  defp digit(:black), do: 0
  defp digit(:brown), do: 1
  defp digit(:red), do: 2
  defp digit(:orange), do: 3
  defp digit(:yellow), do: 4
  defp digit(:green), do: 5
  defp digit(:blue), do: 6
  defp digit(:violet), do: 7
  defp digit(:grey), do: 8
  defp digit(:white), do: 9
end
