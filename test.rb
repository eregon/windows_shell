def show(code)
  sleep 0.01
  puts
  puts code
  p eval(code)
end

show "RbConfig::CONFIG['host_os']"
show "RUBY_PLATFORM"

def search(binary)
  show "`which #{binary}`"

  ENV["PATH"].split(File::PATH_SEPARATOR).each { |dir|
    file = "#{dir}/#{binary}"
    if File.exist?(file)
      p file
    end
  }
end

search("cat")
search("true")
search("false")
search("exit")

show('Process.wait spawn("exit 0"); $?')
show('Process.wait spawn("exit 1"); $?')

show('Process.wait spawn("echo $SHELL")')

