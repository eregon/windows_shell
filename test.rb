def show(code)
  sleep 0.01
  puts
  puts code
  p eval(code)
end

show "RbConfig::CONFIG['host_os']"
show "RUBY_PLATFORM"

ENV["FOO"] = "BAR"

show 'Process.wait Process.spawn("echo $FOO")'
show 'Process.wait Process.spawn("echo %FOO%")'
show 'Process.wait Process.spawn("echo", "%FOO%")'
