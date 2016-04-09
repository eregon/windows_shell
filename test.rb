def show(code)
  puts code
  p eval(code)
end

path = "abc.txt"
File.new(path, "w").close

show "t=Time.now-10; File.utime(t,t,#{path.inspect})"
