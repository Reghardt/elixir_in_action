# Module attributes
# Can be used as compile time constants and be queried at runtime
# doc and moduledoc are stored in the generated/compiled binary
# doc and moduledoc used o attach meta data to a module
# typespecs are also based on attributes, they are used to provide type information
# typespecs can be used in conjunction with dialyzer to perform static analysis
# Typespecs should be used religiously

defmodule Circle do
  @moduledoc "Implements basic circle functions"
  @pi 3.14159 # references to pi are inlined

  @doc "Computes area of a circle"
  @spec area(number) :: number
  def area(r), do: r*r*@pi
  def circumference(r), do: 2*r*@pi
end
