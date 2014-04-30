# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'delay_minutes/version'

Gem::Specification.new do |spec|
  spec.name          = "delay_minutes"
  spec.version       = DelayMinutes::VERSION
  spec.authors       = ["Jason Hsu"]
  spec.email         = ["rubyist@jasonhsu.com"]
  spec.summary       = %q{Provides a random delay with a maximum specified value.}
  spec.description   = %q{Useful for varying the time at which a script runs in a cron job.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
