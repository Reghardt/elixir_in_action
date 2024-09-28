# Atoms are literally named constants

:an_atom
:another_atom
:"an atom with spaces"

# Aliases
# There is another syntax for atoms,
# omit the beginning colon and start with an uppercase char
AnAtom

# The compiler transforms this into :Elixir.AnAtom
# Just like import aliases:
# alias IO, as: MyIO
# IO is turned into :Elixir.IO


:true
:false

# Booleans are atoms
true == :true
# a boolean is just an atom that has a value of either true or false

# nil
:nil
nil == :nill
# nill is somewhat similar to null in other languages
# nil and false are treated as falsy values
