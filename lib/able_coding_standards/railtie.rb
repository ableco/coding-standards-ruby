require "able_coding_standards"
require "rails"

module AbleCodingStandards
  # :NODOC:
  class Railtie < Rails::Railtie
    railtie_name :able_coding_standards

    rake_tasks do
      load "able_coding_standards/tasks/install.rake"
    end
  end
end