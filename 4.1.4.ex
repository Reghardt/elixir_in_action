defmodule Fraction do
  # Each module can define exactly one struct
  defstruct a: nil, b: nil

  def new(a, b) do
    %Fraction{a: a, b: b}
  end

  # This function matches a fraction, the benifit of this pattern matching is that the input type is enforced
  # If anything is passed thats not a fraction instance youll get a match error
  def value(%Fraction{a: a, b: b}) do
    a / b
  end

  def add(%Fraction{a: a1, b: b1}, %Fraction{a: a2, b: b2}) do
    new(
      a1 * b2 + a2 * b1,
      b2 * b1
    )
  end
end

# A struct bears the same name as the module its defined in
# A struct can be instantiated using this special syntax:

# one_half = %Fraction{a: 1, b: 2}

# Structs can be pattern matched:
# This makes it possible to assert  that some variable is realy a struct
# %Fraction{a: a, b: b} = one_half
