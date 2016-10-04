def show(code)
  puts code
  p eval(code)
end

# "\x00\x00\x43\x21"
show "[0x0000_4321].pack('L<_').bytes"
show "[0x0000_4321].pack('L_<').bytes"
show "[0x0000_4321].pack('L<!').bytes"
show "[0x0000_4321].pack('L!<').bytes"
