def show(code)
  puts code
  p eval(code)
end

show "File.basename('a')"
show "File.basename('a/b')"
show "File.basename('a.')"
