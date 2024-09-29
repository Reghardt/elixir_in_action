# Immutability
# In elixir, data cannot be mutated
# Every function returns a new, modified version of the input data.

# Modifying tuples
# A modified tuple is always a complete shallow copy of the old version
# The new and old version points to the same memory location of elements that are shared across both

# Benefits of immutability
# Immutability has two benefits
# 1. Side effect free functions
# 2. Data consistency

# Side effect free functions are easy to analyze,
# understand, and test
