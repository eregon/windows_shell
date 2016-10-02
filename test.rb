def show(code)
  puts code
  p eval(code)
end

Dir.mkdir("foo")
D = "foo"
p D
show "File.zero?(D)"
show "File.stat(D).zero?"
show "File.lstat(D).zero?"
show "FileTest.zero?(D)"

Dir.rmdir D
