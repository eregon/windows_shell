def show(code)
  puts code
  p eval(code)
end

require 'resolv'

show 'p Resolv.getaddress "www.ruby-lang.org"'

show 'p Resolv.getaddress "localhost"'


