# Borrowed from http://www.programmersparadox.com/2012/05/21/gemspec-loading-dependent-gems-based-on-the-users-system/
# The author mentions that this is not the right way to do when installing on different rubies like mruby, jruby, but
# seems there is no other solution at this time, if a single gem has to work on both mruby and jruby
require 'rubygems/dependency_installer.rb'
installer = Gem::DependencyInstaller.new

begin
  if RUBY_VERSION > "1.7" and RUBY_PLATFORM == "java"
    installer.install "jruby-win32ole", ">=0"
  else
    installer.install "win32screenshot", ">=0"
  end

rescue
  #Exit with a non-zero value to let rubygems know something went wrong
  exit(1)
end

f = File.open(File.join(File.dirname(__FILE__), "Rakefile"), "w")
f.write("task :default\n")
f.close