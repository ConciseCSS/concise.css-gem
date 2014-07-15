require "bundler/gem_tasks"


require File.expand_path('../lib/concisecss/concisecss_source', __FILE__)

desc "Get latest files from concisecss"
task "update concisecss source files" do
  files = ConcisecssSource.new
  files.fetch
end