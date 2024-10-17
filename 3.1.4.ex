# Whenever a variable exists in the left side pattern,
# it always matches the corresponding right side term. The variable is bound to the term it matches

# occasionally, we are not interested in a value from the right side term, but we still need to match on it

# date and time is matched
{date, time} = :calendar.local_time()

# Only time is matched as the anonymous variable is used to match date
# The anonymous var works just like a named var, but the value of the term is not bound to any variable
{_, time} = :calendar.local_time()

# A descriptive name may optionally be added to the anonymous variable:
{_time, time} = :calendar.local_time()
# The _time var may technically be used in the program but the compiler will emit a warning

# Patterns can be arbitrarily nested, say for instance only the hour of the day is needed
{_, {hour, _, _}} = :calendar.local_time()

# A var can be referenced multiple times in the same pattern
# For example, an RGB triplet with the same number for each component
{amount, amount, amount} = {127, 127, 127}

# The below wil result in a match error
{amount, amount, amount} = {127, 127, 1}

# Sometimes matching against the content of a variable is required
# For this, the pin operator is provided
expected_name = "Bob"

{^expected_name, _} = {"Bob", 25}

# This wil result in a match error
{^expected_name, _} = {"Alice", 30}

# Using ^expected_name in patterns indicate that you expect
# the value of the variable expected_name to be in the appropriate position in the right side term
# The following is equivalent
{"Bob", _} = {"Bob", 25}

# The pin operator does not bind the variable, it expects the variable to already be bound to a value
