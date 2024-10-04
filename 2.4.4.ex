# Lists
# Lists are used to manage dynamic, variable sized collections of data
# The syntax deceptively resembles arrays from other languages

primes = [2, 3, 5, 7]

# They work like singly linked lists
# To use  it, it should be traversed
# Thus, most operations are of O(n) complexity, including finding its length

length(primes)

# List utility functions
# There are many operations that can be performed on lists, see:
# https://hexdocs.pm/elixir/List.html
# The Enum module is also provides many helpful services:
# https://hexdocs.pm/elixir/Enum.html
# The Enum module deals with many enumerable structures not limited to lists

# get element of a list at index, also O(n)
Enum.at(prime_numbers, 3)

# Check if a list contains
7 in primes

# Replace element at
List.replace_at(primes, 0, 11)
# Just like tuples, the modifier doesn't mutate the variable but returns the modified version of it
# which needs to be stored to another variable or rebind to the same one

# Insert
List.insert_at(primes, 3, 13)

# append to the end
# use a negative value for the insert position
List.insert_at(primes, -1, 13)
# Adding to the end of the list is expensive as it has to traverse to the end of the list

# Concatenate two lists
[1,2,3] ++ [4,5]
# The complexity is O(n), n being the length of the left list

# Lists are most efficient when new elements are pushed to the top or popped from the top

# Recursive list definition
[1 | [2, 3, 4]]
# results in
[1, 2, 3, 4]
# Internally lists are recursive structures of head/tail pairs

# Get tail of list
hd([1,2,3,4]) # Returns 1

# get tail of list
tl([1,2,3,4]) # returns [2,3,4]

#hd and tl are both O(1), they read either the head or tail

# It should be mentioned that the tail of a list need not be a list, it can be any type
# When the tail is not a list it is said to be an improper list and most standard list operations wont work
# They have some special use cases though

# Due to the recursive nature of a list, it is simple and efficient to push a new element to the top of a list
a_list = [5, :value, true]
new_list = [:new_element | a_list]
