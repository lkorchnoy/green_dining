require_relative 'lib/green_dining/version'

Gem::Specification.new do |spec|
  spec.name          = "green_dining"
  spec.version       = GreenDining::VERSION
  spec.authors       = ["Ludmila"]
  spec.email         = ["lkorchnoy@yahoo.com"]

  # spec.summary       = %q{TODO: Write a short summary, because RubyGems requires one.}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

 # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

 # spec.metadata["homepage_uri"] = spec.homepage
 # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
 # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(_dir_) do

    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end



  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('cucumber')
  #spec.add_development_dependency('rake')
  spec.add_dependency('methadone', '~> 1.9.2')
  spec.add_development_dependency('test-unit')
  spec.add_development_dependency "pry"
  spec.add_dependency "rspec"
  spec.add_dependency "nokogiri"
end
