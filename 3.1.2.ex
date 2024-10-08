# Matching tuples

{name, age} = {"bob", 25}

{date, time} = :calendar.local_time()

# The date and time are also tuples
{year, month, day} = date
{hour, minute, second} = time

# If the right side does not correspond to the pattern, the match fails and an error is raised
{name, age} = "cant match"
