defmodule NameBadge do
  def print(id, name, department) do
    str =
      if id != nil do
        "[" <> Integer.to_string(id) <> "] - "
      else
        ""
      end

    str = str <> name <> " - "

    str =
      if department != nil do
        str <> String.upcase(department)
      else
        str <> "OWNER"
      end

    str
  end
end