def show(code)
  puts code
  p eval(code)
end

io = IO.popen("date /t")
begin
  p io.read
ensure
  io.close
end

io = open("|date /t")
begin
  p io.read
ensure
  io.close
end