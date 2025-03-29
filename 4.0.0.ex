# In Elixir, instead of classes you use modules which are collections of functions.
# Instead of calling methods on objects, you explicitly call module functions and provide input data via arguments.

"a string".upcase

String.upcase("a string")

# The basic principles of abstractions on Elixir can be summarized as follows:
# A module is on chjarge of abstracting some behaviour
# The module's functions usually expect an instance of the abstraction as the first arg
# Modifier functions return an modifie  version of the abstraction
# Query functions return some other type of data
