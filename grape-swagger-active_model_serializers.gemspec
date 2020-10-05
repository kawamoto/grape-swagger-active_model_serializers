
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grape-swagger/active_model_serializers/version'

Gem::Specification.new do |spec|
  spec.name          = "grape-swagger-active_model_serializers"
  spec.version       = GrapeSwagger::ActiveModelSerializers::VERSION
  spec.authors       = ["Yuki Kawamoto"]
  spec.email         = ["kawamoto62@gmail.com"]

  spec.summary       = 'Grape swagger adapter to support active model serializer object parsing'
  # spec.description   = ''
  spec.homepage      = 'https://github.com/kawamoto/grape-swagger-active_model_serializers'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.required_ruby_version = '>= 2.3'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'active_model_serializers', '>= 0.10.0'
  spec.add_runtime_dependency 'activerecord', '>= 4.1'
  spec.add_runtime_dependency 'grape-swagger', '>= 0.25.2'

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'activerecord-nulldb-adapter', '~> 0.3.7'
end
