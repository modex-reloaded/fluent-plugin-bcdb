#
# Copyright ©2019. MODEX (Gibraltar) LIMITED
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fluent/plugin/bcdb/version"

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-bcdb"
  spec.version       = Fluent::Plugin::Bcdb::VERSION
  spec.authors       = ["Modex Team"]
  spec.email         = ["support@modex.tech"]

  spec.summary       = %q{Fluent output plugin to Modex Blockchain Database}
  spec.homepage      = "https://github.com/messbusters/fluent-plugin-bcdb"
  spec.license       = "APACHE"

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
