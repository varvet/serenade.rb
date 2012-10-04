begin
  require "bundler/gem_tasks"
rescue LoadError
  # Only gem pushers need bundler tasks.
end

begin
  require "yard"
  YARD::Rake::YardocTask.new("yard:doc") do |task|
    task.options = ["--no-stats"]
  end

  desc "List YARD stats, as well as undocumented methods"
  task "yard:stats" do
    YARD::CLI::Stats.run("--list-undoc")
  end

  task "Generate documentation and show stats"
  task :yard => ["yard:doc", "yard:stats"]
rescue LoadError
  puts "WARN: YARD not available. You may install documentation dependencies via bundler."
end

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new("spec") do |task|
  task.ruby_opts = "-W2"
end

task :default => :spec
