def show(code)
  puts code
  p eval(code)
end

# New file
File.open("abc", "w", 0666) { |f|
  puts f.stat.mode.to_s(8)
}

# File exists
File.open("abc", "w", 0466) { |f|
  puts f.stat.mode.to_s(8)
}

