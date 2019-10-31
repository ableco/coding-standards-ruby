require "rake"
require "able_coding_standards/app"

namespace :coding_standards do
  desc "Copy configuration files for Coding Standards"
  task :install do
    AbleCodingStandards::App.new.copy_files
  end
end
