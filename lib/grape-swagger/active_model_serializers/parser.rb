module GrapeSwagger
  module ActiveModelSerializers
    class Parser
      attr_reader :model
      attr_reader :endpoint

      def initialize(model, endpoint)
        @model = model
        @endpoint = endpoint
      end

      # format specification: https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#definitions-object
      def call
        # FIXME: return association info

        model_resource_attributes_info = build_model_resource_attributes_info(model)

        model._attributes.each_with_object({}) do |value, property|
          property[value] = { type: model_resource_attributes_info.try(:[], value).try(:[], :type) || :string }
        end
      end

      private

      def build_model_resource_attributes_info(model)
        result = {}
        resource_class = model_resource_class(model)
        return result unless resource_class

        resource_class.try(:attribute_types)&.each do |k, v|
          result[k.to_sym] = { type: v.type}
        end

        result
      end

      def model_resource_class(model)
        model_resource_class_name(model).safe_constantize
      end

      def model_resource_class_name(model)
        model.name.demodulize.chomp('Serializer')
      end
    end
  end
end
