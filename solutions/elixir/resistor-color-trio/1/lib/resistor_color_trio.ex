defmodule ResistorColorTrio do
  @doc """
  Calculate the resistance value in ohms from resistor colors
  """
  @spec label(colors :: [atom]) :: {number, :ohms | :kiloohms | :megaohms | :gigaohms}
  def label(colors) do
    [c1, c2, c3 | _rest] = colors
    value =
      (digit(c1) * 10 + digit(c2))
      |> Kernel.*(:math.pow(10, digit(c3)))
      |> trunc()

    cond do
      value >= 1_000_000_000 ->
        {value / 1_000_000_000, :gigaohms}

      value >= 1_000_000 ->
        {value / 1_000_000, :megaohms}

      value >= 1_000 ->
        {value / 1_000, :kiloohms}

      true ->
        {value, :ohms}
    end
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
