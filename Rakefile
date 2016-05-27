require File.expand_path("../config/application", __FILE__)
require "slim_lint/rake_task"
require "rubocop/rake_task"

RuboCop::RakeTask.new

Rails.application.load_tasks

SlimLint::RakeTask.new

task(:default).clear
task default: ["factory_girl:lint", :spec, :rubocop, :slim_lint]

if defined? RSpec
  task(:spec).clear
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.verbose = false
  end
end
