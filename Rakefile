require "bundler/gem_tasks"
require File.expand_path('../lib/concisecss/concisecss_source', __FILE__)

desc "Get latest files from concisecss"
task default: ['update-concisecss']
task "update-concisecss" do
  files = ConcisecssSource.new
  files.fetch
end