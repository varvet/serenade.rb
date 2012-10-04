begin
  require "bundler/gem_tasks"
rescue LoadError
  # Only gem pushers need bundler tasks.
end

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new("spec") do |task|
  task.ruby_opts = "-W2"
end

task :default => :spec
