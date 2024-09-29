# Strings
# Elixir does not have a dedicated string type,
# instead strings are represented using either a binary or a list type

"This is a string"

"Embedded expression: #{3 + 0.14}"

"
This is
a multiline string
"

# the ~s sigil is used here
~s(This is also a string)

"String" <> " " <> "concatenation"
