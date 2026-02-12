defmodule RationalNumbers do
  @type rational :: {integer, integer}

  @doc """
  Add two rational numbers
  """
  @spec add(a :: rational, b :: rational) :: rational
  def add(a, b) do
    {num_a, den_a} = a
    {num_b, den_b} = b

    new_num = num_a * den_b + num_b * den_a
    new_den = den_a * den_b

    reduce({new_num, new_den})
  end

  @doc """
  Subtract two rational numbers
  """
  @spec subtract(a :: rational, b :: rational) :: rational
  def subtract(a, b) do
    {num_a, den_a} = a
    {num_b, den_b} = b

    new_num = num_a * den_b - num_b * den_a
    new_den = den_a * den_b

    reduce({new_num, new_den})
  end

  @doc """
  Multiply two rational numbers
  """
  @spec multiply(a :: rational, b :: rational) :: rational
  def multiply(a, b) do
    {num_a, den_a} = a
    {num_b, den_b} = b

    new_num = num_a * num_b
    new_den = den_a * den_b

    reduce({new_num, new_den})
  end

  @doc """
  Divide two rational numbers
  """
  @spec divide_by(num :: rational, den :: rational) :: rational
  def divide_by(num, den) do
    {num_a, den_a} = num
    {num_b, den_b} = den

    new_num = num_a * den_b
    new_den = den_a * num_b

    reduce({new_num, new_den})
  end

  @doc """
  Absolute value of a rational number
  """
  @spec abs(a :: rational) :: rational
  def abs(a) do
    {num_a, den_a} = a
    reduce({Kernel.abs(num_a), Kernel.abs(den_a)})
  end

  @doc """
  Exponentiation of a rational number by an integer
  """
  @spec pow_rational(a :: rational, n :: integer) :: rational
  def pow_rational({num, den}, n) when n >= 0 do
    reduce({num ** n, den ** n})
  end

  def pow_rational({num, den}, n) when n < 0 do
    reduce({den ** -n, num ** -n})
  end

  @doc """
  Exponentiation of a real number by a rational number
  """
  @spec pow_real(x :: integer, n :: rational) :: float
  def pow_real(x, {num, den}) do
    :math.pow(x, num / den)
  end

  @doc """
  Reduce a rational number to its lowest terms
  """
  @spec reduce(a :: rational) :: rational
  def reduce({num, den}) do
    gcd_val = gcd(num, den)
    reduced_num = div(num, gcd_val)
    reduced_den = div(den, gcd_val)
  
    if reduced_den < 0 do
      {-reduced_num, -reduced_den}
    else
      {reduced_num, reduced_den}
    end
  end

  defp gcd(a, 0), do: Kernel.abs(a)
  defp gcd(a, b), do: gcd(b, rem(a, b))

end
