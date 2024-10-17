# List matching works similarly to tuples

[first, second, third] = [1, 2, 3]

# The previously mentioned patten techniques work as well
[1, second, third] = [1, 2, 3]
[first, first, first] = [1, 1, 1]
[first, second, _] = [1, 2, 3]
[^first, second, _] = [1, 2, 3]

# Matching lists are more often done by relying on their recursive nature
# Non empty lists are recursive structures that can be expressed in the form [head, tail]
# Patten matching can be used to put these two elements into separate variables
[head | tail] = [1, 2, 3]

[min | _] = Enum.sort([3, 2, 1])
