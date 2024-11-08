# Matching Maps

%{name: name, age: age} = %{name: "Bob", age: 25}

# Maps are frequently used to represent structured data, in such cases only some fields may be of interest, that is why maps allow partial matching
# When matching a map, the left hand side need not contain all the keys from the right side term
%{age: age} = %{name: "Bob", age: 25}

# a match will fail if the pattern contains a key that’s not in the matched term:
%{age: age, works_at: works_at} = %{name: "Bob", age: 25}
