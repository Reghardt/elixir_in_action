# Even constants are allowed on the left side of a match expression

1 = 1

# The match operator tries to match the right side term to the left side patten
# Matching 1 = 1 proves that this is not assignment

# Constants are much more useful in compound matches
# For example, tuples are sometimes used to group various fields of of a record
person = {:person, "Bob", 25}

# The first element denotes that the tuple represents a person
# This knowledge can be used to retrieve individual attributes of this person
{:person, name, age} = person

# The first element is expected to have the value of :person
# The remaining elements are bound to name and age

# This is a common idiom in elixir
# Many functions return either {:ok, result} or {:error, reason}
# For example, imagine your system relies on a config file and expects it to always be available
{:ok, contents} = File.read("my_app.config")

# If the file exists, its contents are extracted to the variable contents
# If the operation fails, a tuple in the form {:error, reason} is returned
# so the match fails
# By using constants, the match is tightened, ensuring some part of the right side has a specific value
