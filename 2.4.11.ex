# Higher level types
# The most frequently used higher level types are:
# Range, Keyword, MapSet, Date, Time, NaiveDateTime and DateTime

# Range
# Elixir provides a special syntax for defining ranges
range = 1..2

# Does a number fall in a range?
2 in range

# Enum can be used on ranges
Enum.each(1..3, &IO.puts/1)
# Internally, range is represented as a map
# A million number range is still just a small map

# Keyword list
# A keyword list is a special case of a list,
# each element is a two element tuple,
# and the first element of each tuple is an atom,
# The second element can be of any type

days = [{:monday, 1}, {:tuesday, 2}, {:wednesday, 3}]
# There is a shorter version:
days = [monday: 1, tuesday: 2, wednesday: 3]

# Keyword lists are often used for small size key value structures,
# where keys are atoms
# Many useful functions are available in the Keyword module
Keyword.get(days, :monday)

# Just like with maps, the [] operator can be used
days[:tuesday]
# But its still a list, a lookup is of O(n) complexity

# Keyword lists are most often used for allowing clients to pass an arbitrary
# number of optional args to a function:
IO.inspect([100, 200, 300], width: 3, limit: 1)

# This pattern is so common that if the last arg is a keyword list, the square brackets may be omitted
IO.inspect([100, 200, 300], width: 3, limit: 1)
# The function still has an arity of 2

# to simulate optional args
def my_fun(arg1, arg2, opts \\ []) do
  ...
end

# The opts arg defaults to an empty list
# A MapSet is the implementation of a set, a store of unique values
# a value can be of any type

days = MapSet.new([:monday, :tuesday, :wednesday])

MapSet.member?(days, :monday)

# The set can be manipulated using functions from the MapSet module
# A MapSet is also enumerable
Enum.each(days, &IO.puts/1)
