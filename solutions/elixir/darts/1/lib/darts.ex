defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    val = :math.pow(x**2 + y**2, 1 /2)
    cond do
      val > 10 -> 0
      val > 5 -> 1
      val > 1 -> 5
      true -> 10
    end
  end
end
