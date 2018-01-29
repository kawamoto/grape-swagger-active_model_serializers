require 'bundler/setup'
require 'active_support/core_ext/object'
require 'active_record'
require 'active_model_serializers'
require 'support/nulldb'

require 'grape-swagger/active_model_serializers'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
