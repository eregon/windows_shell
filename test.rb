def show(code)
  puts code
  p eval(code)
end

show "system('does_not_exist', err: File::NULL)"

show "system('does_not_exist', err: 'NUL')"
