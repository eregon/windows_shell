def show(code)
  sleep 0.01
  puts
  puts code
  p eval(code)
end

show "RbConfig::CONFIG['host_os']"
show "RUBY_PLATFORM"

puts

Process.constants.select { |c| c.to_s.start_with?('CLOCK_') }.each do |c|
  v = Process.const_get(c)
  p c => v
  begin
    p Process.clock_gettime(v)
  rescue Errno::EINVAL => e
    p e.message
  end
end
