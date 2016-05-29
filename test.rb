def show(code)
  puts code
  p eval(code)
end

File.open("abc", "wb") { |f|
  f.write "a\r\n"
}

File.open("abc", "rb") { |f|
  p f.read
}

p File.read("abc")

p File.binread("abc")
