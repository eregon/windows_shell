def show(code)
  puts code
  p eval(code)
end

File.open("abc", "wb") { |f|
  f.write "a\r\n"
}

File.open("abc", "rb") { |f| p f.read }
p File.read("abc")
p File.binread("abc")

puts

File.open("abc", "wb", newline: :crlf) { |f|
  f.write "a\n"
  f.puts "b"
}

File.open("abc", "rb") { |f| p f.read }
p File.read("abc")
p File.binread("abc")
