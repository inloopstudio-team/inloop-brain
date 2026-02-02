

Gem::Specification.new do |spec|
  spec.name          = "inloop-brain"
  spec.version       = "0.0.7"
  spec.authors       = ["Abhishek Parolkar"]
  spec.email         = ["abhishek@inloop.studio"]

  spec.summary       = "Command-line interface for the Inloop Brain Access Kit"
  spec.description   = "A simple command-line tool that sends prompts to the Inloop Brain Access Kit API and returns responses"
  spec.homepage      = "https://inloop.studio"
  spec.license       = "Nonstandard"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/inloopstudio-team/inloop-brain" 
  spec.metadata["changelog_uri"] = "https://github.com/inloopstudio-team/inloop-brain/blob/main/CHANGELOG.md" # Replace with actual changelog URL

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["inloop-brain"]


  # Dependencies
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
