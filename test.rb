def show(code)
  puts code
  p eval(code)
end

require 'socket'
puts Socket::Constants.constants
