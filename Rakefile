require "./lib/app"

namespace :coding_standards do
  task :install do
    App.new.copy_files
  end
end

task default: [:"coding_standards:install"]