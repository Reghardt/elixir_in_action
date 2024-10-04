# Functions are first class citizens in elixir
# which means they can be assigned to variables
# That is not the result of the function bit the definition

square = fn x -> x * x end

#  Call like so:
square.(5)

# The dot operator indicates a anonymous function is being called
# Rge function is anonymous because it is not bound to a global name
# square(5) would invoke a named function defined somewhere in the module
# The dot thus distinguishes between if a function is named or anonymous

# Because functions can be stored in vaiables, they can be passed as
# args to functions

print_elem = fn x -> IO.puts(x) end
Enum.each([1, 2, 3], print_elem)

# or
Enum.each([1, 2, 3], fn x -> IO.puts(x) end)

# Here the lambda simply forwards all arguments to IO.puts doing no other meaningful work
# Elixir makes it possible to directly reference a function to have a more compact lambda definition
# Using the capture operator
Enum.each([1, 2, 3], &IO.puts/1)

# The capture operator can also be used to omit explicit argument naming, by using argument number
lambda = fn x, y, z -> x * y + z end
# turned into:
lambda = &(&1 * &2 + &3)
# call:
lambda.(2, 3, 4)
