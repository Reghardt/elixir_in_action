run_query = fn query_def ->
  Process.sleep(2000)
  "#{query_def} result"
end

# result =
#   Enum.map(
#     1..5,
#     fn index ->
#       query_def = "query #{index}"
#       run_query.(query_def)
#     end
#   )

# IO.inspect(result)

spawn(fn ->
  query_result = run_query.("query 1")
  IO.puts(query_result)
end)
