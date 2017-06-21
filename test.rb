def show(code)
  sleep 0.01
  puts
  puts code
  p eval(code)
end

show "RbConfig::CONFIG['host_os']"
show "RUBY_PLATFORM"

show "`which cat`"

ENV["PATH"].split(File::PATH_SEPARATOR).each { |dir|
  if File.exist?("#{dir}/cat")
    p "#{dir}/cat"
  end
}

ENV["FOO"] = "BAR"

show 'Process.wait Process.spawn("echo $FOO")'
show 'Process.wait Process.spawn("echo %FOO%")'
show 'Process.wait Process.spawn("echo", "%FOO%")'
