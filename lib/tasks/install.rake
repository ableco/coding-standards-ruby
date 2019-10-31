require "rake"
require_relative "../app"

namespace :coding_standards do
  desc "Copy configuration files for Coding Standards"
  task :install do
    App.new.copy_files
  end
end
