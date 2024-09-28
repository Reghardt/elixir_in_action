# tuples
# tuples are something like untyped structures or records
# Used to group a fixed number of elements together

person = {"Bob", 25}

# gets element at index of tuple
age = elem(person, 1)

# Add element to new copy of tuple, the original tuple is unmodified
put_elem(person, 1, 26)

# rebound new tuple to prior variable, old tuple is now eligible for garbage collection
person = put_elem(person, 1, 26)
