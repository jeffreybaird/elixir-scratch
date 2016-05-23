handle_open = fn
  {:ok, file} -> "First Line: #{IO.read(file,:line) }"
  {_, error} -> "Error: #{:file.format_error(error) }"
end

 IO.puts handle_open.(File.open("main.ex"))
 IO.puts handle_open.(File.open("laskdjf"))

  apply = fn(name, function) -> function.(name) end

  apply.("jeff", fn(name) -> "Hello #{name}" end) |> IO.puts
  apply.("jeff", fn(name) -> "Goodbye #{name}" end) |> IO.puts

prefix = fn(pre) -> fn(surname) -> "#{pre} #{surname}"

&(&name, "HI:#{name}")
