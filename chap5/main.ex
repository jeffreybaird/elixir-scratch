defmodule Foo do
  def print_map({b}) do
    b |> IO.puts
  end

  def print_map({a,b}) do
    a
    |> IO.puts
    print_map({b})
  end

end


print_map = fn
  {a,b}   -> IO.puts(b)
end




sum = fn (a,b) -> a + b end

sum.(1,2) |> IO.puts



swap = fn ({a,b}) -> {b,a} end
swap.({1,2})

print_map.({1,4})
