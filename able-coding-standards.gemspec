# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = "able-coding-standards"
  spec.version     = "0.1.0"
  spec.authors     = "Able"
  spec.email       = "engineering@able.co"

  spec.summary     = "Able's Coding Standards"
  spec.description = "Automated linting Ruby code for Able projects, using https://github.com/ableco/rubocop-able"
  spec.homepage    = "https://github.com/ableco/coding-standards-ruby"
  spec.license     = "MIT"

  spec.post_install_message = <<-MSG
✨ Thanks for using our Coding Standards! ✨

Please run:

rake coding_standards:install

MSG

  spec.files       = Dir["README.md", "LICENSE", "lib/**/*", "config/*.yml"]

  spec.add_dependency "lefthook", "0.6.3"
  spec.add_dependency "rake"
  spec.add_dependency "thor", "0.20.3"
  spec.add_dependency "rubocop-able", "0.1.0"

  spec.require_paths = ["lib"]
end
