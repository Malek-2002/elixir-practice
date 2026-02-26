defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.first(String.trim(name))
  end

  def initial(name) do
    String.upcase(first_letter(name))
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    [first, last] = String.split(full_name)
    initial(first)
    |> Kernel.<>(" ")
    |> Kernel.<>(initial(last))
  end

  def pair(full_name1, full_name2) do
    # ❤-------------------❤
    # |  X. X.  +  X. X.  |
    # ❤-------------------❤
    initials1 = initials(full_name1)
    initials2 = initials(full_name2)

    """
    ❤-------------------❤
    |  #{initials1}  +  #{initials2}  |
    ❤-------------------❤
    """
  end
end
