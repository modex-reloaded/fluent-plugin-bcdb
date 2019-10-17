lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fluent/plugin/bcdb/version"

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-bcdb"
  spec.version       = Fluent::Plugin::Bcdb::VERSION
  spec.authors       = ["Silviu Panaite"]
  spec.email         = ["silviu@messbusters.org"]

  spec.summary       = %q{Fluent output plugin to Modex Blockchain Database}
  spec.homepage      = "https://github.com/messbusters/fluent-plugin-bcdb"
  spec.license       = "APACHE"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/messbusters/fluent-plugin-bcdb"
  spec.metadata["changelog_uri"] = "https://github.com/messbusters/fluent-plugin-bcdb"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "yajl-ruby", "~> 1.0"
  spec.add_dependency "fluentd", [">= 0.14.22", "< 2"]
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit", ">= 3.1.0"
end
