$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "wohnung/version"
 
task :build do
  system "gem build wohnung.gemspec"
end
 
task :release => :build do
  system "gem push wohnung-#{Wohnung::VERSION}"
end