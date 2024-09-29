# Maps

# A map is a key value store, where keys and values can be any term
# Maps have a duel usage
# They are used to power dynamically sized key value structures
# And also used to manage simple records - a couple of well defined named fields bundled together

# Dynamically sized maps
empty_map = %{}

# Creation of a map with some values
squares = %{1 => 1, 2 => 4, 3 => 9}

# Alternate creation
squares = Map.new([{1,1}, {2,4}, {3,9}])

# Fetch a value at a given key:
squares[2]
# If a key does not exist, nil gets returned

# same as with [] but a default can be defined if not found
Map.get(squares, 2, :not_found)

# returns {:ok, 4}
Map.fetch(squares, 2)

# returns :error as the key does not exist
Map.fetch(squares, 4)

# An exception is raised if the key is not in the map
Map.fetch!(squares, 4)

# Put item
Map.put(squares, 4, 16)

# There are many other useful functions in the Map module such as update and delete
# A map is also enumerable so all functions from the Enum module can work on maps

# STRUCTURED DATA
# Maps are the go to type for managing key value data.
# They are also frequently used to combine a couple of fields into a single structure
# a case that somewhat overlaps that of tuples, but allows you to
# access fields by name

bob = %{:name => "Bob", :age => 25, :works_at => "Initech"}

# Retrieve a field
bob[:works_at]

# If keys are atoms they receive special syntax treatment:
# An error is raised if the field is nonexistent
bob.age

# To change a field value:
next_years_bob = %{bob | age: 26}

# The same syntax can be used to change multiple attributes:
# Only values that already exist in the map can be modified
# This makes the update syntax a perfect choice for powering maps that
# represent structures, if you mistype a field name an immediate runtime error is raised
%{bob | age: 26, works_at: "Initrode"}

# COMMON PATTERN WITH MAPS
# The common pattern when using maps is to provide all fields while creating the map using atoms as keys
# If a value for a field is not available it is set to nil.
# Such a map the always has all its fields
