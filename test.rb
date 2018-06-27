def show(code)
  sleep 0.01
  puts
  puts code
  p eval(code)
end

show "RbConfig::CONFIG['host_os']"
show "RUBY_PLATFORM"

puts
ENV["RUBYLIB"] = "a:b"
puts `ruby -e 'puts $:'`

puts
ENV["RUBYLIB"] = "#{Dir.pwd}/a:#{Dir.pwd}/b"
puts `ruby -e 'puts $:'`

puts
ENV["RUBYLIB"] = "a;b"
puts `ruby -e 'puts $:'`

puts
ENV["RUBYLIB"] = "#{Dir.pwd}/a;#{Dir.pwd}/b"
puts `ruby -e 'puts $:'`
