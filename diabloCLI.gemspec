require_relative 'lib/diabloCLI/version'

Gem::Specification.new do |spec|
  spec.name          = "diabloCLI"
  spec.version       = DiabloCLI::VERSION
  spec.authors       = ["dfeleppa"]
  spec.email         = ["dfeleppa@gmail.com"]

  spec.summary       = "Simple Ruby Diablo CLI Application"
  spec.description   = "Use Blizzard API data to parse Diablo 3 leaderboards"
  spec.homepage      = "git@github.com:dfeleppa/diablo-cli.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "git@github.com:dfeleppa/diablo-cli.git"
  spec.metadata["changelog_uri"] = "git@github.com:dfeleppa/diablo-cli.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
