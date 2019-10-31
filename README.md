# able-coding-standards-ruby

Automated linting for Able using https://github.com/ableco/rubocop-able

## How does it work?

`able-coding-standards` requires you to run `rake coding_standards:install` in your project's root directory to copy [Rubocop](https://rubocop.readthedocs.io) configuration file.

It also installs `lefthook` and copy a `lefthook.yml` file to run **Rubocop** based on `rubocop-able` configuration in a pre-commit stage.

In case any of these configuration files already exists, they should be updated manually to reflect the contents of the ones provided by `able-coding-standards` (for example, in case a project already has an Rubocop configuration file).

## Installation

Add `` in your `Gemfile`:

```ruby
gem "able-coding-standards", "0.1.0"
```

## Usage

Run `rake coding_standards:install` and follow the instructions.

It will try to copy the following files:

* `.rubocop.yml`
* `lefthook.yml`

In case any of these files already exists, it will shows the content of those files in the console's output and let you copy and paste those configurations manually.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ableco/coding-standards-ruby.