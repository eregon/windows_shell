def show(code)
  puts code
  p eval(code)
end

show "respond_to?(:fork)"
show "respond_to?(:fork, true)"

show "Kernel.respond_to?(:fork)"
show "Kernel.respond_to?(:fork, true)"

show "Process.respond_to?(:fork)"
show "Process.respond_to?(:fork, true)"
