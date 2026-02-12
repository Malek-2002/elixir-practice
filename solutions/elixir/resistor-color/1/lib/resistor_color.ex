defmodule ResistorColor do
  @doc """
  Return the value of a color band
  """
  @spec code(atom) :: integer()
  def code(color) do
    digit(color)
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
