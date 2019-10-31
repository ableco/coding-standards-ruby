# frozen_string_literal: true
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "able_coding_standards/version"

Gem::Specification.new do |spec|
  spec.name        = "able-coding-standards"
  spec.version     = AbleCodingStandards::VERSION
  spec.authors     = "Able"
  spec.email       = "engineering@able.co"

  spec.summary     = "Able's Coding Standards"
  spec.description = "Automated linting Ruby code for Able projects, using https://github.com/ableco/rubocop-able"
  spec.homepage    = "https://github.com/ableco/coding-standards-ruby"
  spec.license     = "MIT"

  spec.require_paths = ["lib"]

  spec.add_dependency "lefthook", "0.6.3"
  spec.add_dependency "rake"
  spec.add_dependency "thor", "0.20.3"
  spec.add_dependency "rubocop-able", "0.1.0"

  spec.post_install_message = <<-MSG
✨ Thanks for using our Coding Standards! ✨

Please run:

rake coding_standards:install

MSG
end
