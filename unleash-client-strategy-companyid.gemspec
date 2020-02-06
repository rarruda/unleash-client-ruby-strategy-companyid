lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "unleash/strategy/company_id"

Gem::Specification.new do |spec|
  spec.name          = "unleash-client-strategy-companyid"
  spec.version       = Unleash::Strategy::CompanyId::VERSION
  spec.authors       = ["Renato Arruda"]
  spec.email         = ["rarruda@rarruda.org"]

  spec.summary       = 'Unleash client custom strategy for companyId context value.'
  spec.description   = 'Unleash client example of a custom strategy for companyId context value.'
  spec.homepage      = "https://github.com/rarruda/unleash-client-ruby-strategy-companyid"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "https://github.com/unleash/unleash-client-ruby-strategy-companyid"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "unleash", "~> 0.1.6"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
