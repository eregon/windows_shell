def show(code)
  sleep 0.01
  puts
  puts code
  p eval(code)
end

show "RbConfig::CONFIG['host_os']"
show "RUBY_PLATFORM"

show "1.size"
show "(1<<34).size"

p eval("(Complex(1, 2)).hash.to_s")
