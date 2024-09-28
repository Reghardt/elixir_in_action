# Function Visibility

defmodule TestPrivate do
  def double(a) do # can be called by anyone
    sum(a, a)
  end

  defp sum(a, b) do # private func, can only be used inside the module it is defined in
    a + b
  end
end
