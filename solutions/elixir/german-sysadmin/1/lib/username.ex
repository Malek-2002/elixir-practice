defmodule Username do
  def sanitize([]), do: []

  def sanitize([first_letter | rest]) do
    case first_letter do
      c when c in ?a..?z -> [c] ++ sanitize(rest)
      ?_ -> [?_] ++ sanitize(rest)

      ?ä -> 'ae' ++ sanitize(rest)
      ?ö -> 'oe' ++ sanitize(rest)
      ?ü -> 'ue' ++ sanitize(rest)
      ?ß -> 'ss' ++ sanitize(rest)

      _ -> sanitize(rest)
    end
  end
end