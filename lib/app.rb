require "thor"

class App < Thor
  include Thor::Actions

  desc "copy_files", "Copy configuration files into project directory"
  def copy_files
    rubocop_configuration = File.read(File.expand_path("../config/.rubocop.yml", __dir__))
    lefthook_configuration = File.read(File.expand_path("../config/lefthook.yml", __dir__))

    run "lefthook install -f"

    puts "Looking for a .rubocop.yml file... 🔍\n"
    if File.exists?(File.join(destination_root, ".rubocop.yml"))
      puts "Your project already has a .rubocop.yml file.\n"
      puts "To use our Coding Standards configuration replace your .rubocop.yml file with the following code:\n\n"
      puts rubocop_configuration
    else
      copy_file "../config/.rubocop.yml", ".rubocop.yml", mode: :preserve
    end

    puts "Looking for a lefthook.yml file... 🔍\n"
    if File.exists?(File.join(destination_root, "lefthook.yml"))
      puts "Your project already has a lefthook.yml file.\n"
      puts "To use our Coding Standards configuration replace your lefthook.yml file with the following code:\n\n"
      puts lefthook_configuration
    else
      copy_file "../config/lefthook.yml", "lefthook.yml", mode: :preserve
    end
  end

  def self.source_root
    File.dirname(__FILE__)
  end
end