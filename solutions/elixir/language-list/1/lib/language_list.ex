defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [ language | list ]
  end

  def remove(list) do
    [ _ | rest] = list
    rest
  end

  def first(list) do
    [first | _ ] = list
    first    
  end

  def count(list) do
    cnt(list)
  end

  defp cnt([ _ | rest ]), do: 1 + cnt(rest)
  defp cnt([]), do: 0

  def functional_list?(list) do
    memb?(list)
  end
  
  defp memb?([a | rest]) do
    case a do
      "Elixir" -> true
      _ -> memb?(rest)
    end
  end
  defp memb?([]), do: false
end
