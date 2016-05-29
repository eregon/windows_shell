def show(code)
  puts code
  p eval(code)
end

File.open("abc", "wt", newline: :lf) { |f|
  f.write "a\n"
  f.puts "b"
}

File.open("abc", "rb") { |f| p f.read }
p File.read("abc")
p File.binread("abc")

puts

File.open("abc", "w", newline: :lf) { |f|
  f.write "a\n"
  f.puts "b"
}

File.open("abc", "rb") { |f| p f.read }
p File.read("abc")
p File.binread("abc")
