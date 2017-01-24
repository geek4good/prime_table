# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prime_table/version'

Gem::Specification.new do |spec|
  spec.name          = "prime_table"
  spec.version       = PrimeTable::VERSION
  spec.authors       = ["Lucas Mbiwe"]
  spec.email         = ["lucas.mbiwe@mendeley.com"]

  spec.summary       = "Print a prime number multiplication table"
  spec.description   = <<DESC
${spec.name} takes numeric input (N) from a user and outputs a multiplication table of (N) prime numbers.
DESC
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
