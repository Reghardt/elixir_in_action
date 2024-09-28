# Imports and aliases
# Calling functions from another module can sometimes be cumbersome
# because you need to reference the module name.
# If your module often calls functions from another module,
# you can import that other module into your own.
# Importing a module allows you to call its
# public functions without prefixing them with the module name

defmodule MyModule do
  import IO

  def my_function do
    puts "Calling imported function"
  end
end

defmodule MyModule2 do
  alias IO, as: MyIO

  def my_function do
    MyIO.puts("Calling imported function")
  end
end

defmodule MyModule3 do
  alias Geometry.Rectangle # Aliased as Rectangle, very common use for alias
end
