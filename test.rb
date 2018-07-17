def show(code)
  sleep 0.01
  puts
  puts code
  p eval(code)
end

show "RbConfig::CONFIG['host_os']"
show "RUBY_PLATFORM"

show "File::SEPARATOR"
show "File::PATH_SEPARATOR"

require 'socket'
show "Socket.const_defined?(:SOCK_PACKET)"
show "Socket::SOCK_PACKET"
