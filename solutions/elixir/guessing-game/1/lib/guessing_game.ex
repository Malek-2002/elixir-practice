defmodule GuessingGame do
  def compare(secret_number, guess) when is_integer(guess), do: compare_int(secret_number, guess)
  def compare(secret_number), do: "Make a guess"
  def compare(secret_number, _), do: "Make a guess"
  def compare_int(secret_number, guess) when secret_number == guess, do: "Correct"
  def compare_int(secret_number, guess) when secret_number == guess - 1, do: "So close"
  def compare_int(secret_number, guess) when secret_number == guess + 1, do: "So close"
  def compare_int(secret_number, guess) when secret_number < guess, do: "Too high"
  def compare_int(secret_number, guess) when secret_number > guess, do: "Too low"
end  