$:.unshift File.join( File.dirname( __FILE__ ))
$:.unshift File.join( File.dirname( __FILE__ ), 'lib')

require 'rake'
require 'rake/testtask'
require 'guard/live-set/version'

Rake::TestTask.new(:test) do |t|
  t.libs << "spec"
  t.test_files = FileList["spec/**/*_spec.rb"]
  t.verbose = true
end

task :build do
  system "gem build ../gemspecs/guard-live-set.gemspec"
  system "mv guard-live-set-#{Guard::LiveSet::VERSION}.gem ../gems"
end
 
task :local => :build do
  system "gem install ../gems/guard-live-set-#{Guard::LiveSet::VERSION}.gem"
end

task :release => :build do
  system "gem push ../gems/guard-live-set-#{Guard::LiveSet::VERSION}.gem"
end

task :default => [:test]
