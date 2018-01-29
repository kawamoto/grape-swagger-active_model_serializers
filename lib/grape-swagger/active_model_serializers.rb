require 'grape-swagger'
require 'active_model_serializers'

require 'grape-swagger/active_model_serializers/parser'
require 'grape-swagger/active_model_serializers/version'

module GrapeSwagger
  module ActiveModelSerializers
  end
end

GrapeSwagger.model_parsers.register(::GrapeSwagger::ActiveModelSerializers::Parser, ::ActiveModel::Serializer)
