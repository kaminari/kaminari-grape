require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = [FileList['spec/**/*_spec.rb'], "#{File.join(Gem.loaded_specs['kaminari'].gem_dir, 'spec')}/**/*_spec.rb"]
end

task :default => :spec
