RSpec.describe GrapeSwagger::ActiveModelSerializers::Parser do
  class Book < ActiveRecord::Base
    attribute :id, :integer
    attribute :title, :string
  end

  class BookGenre
    def name
      'History'
    end
  end

  module Api
    class BookSerializer < ActiveModel::Serializer
      attributes :id, :title
    end

    class BookGenreSerializer < ActiveModel::Serializer
      attributes :name
    end
  end

  let(:model) { Api::BookSerializer }
  let(:endpoint) { nil }
  let(:parser) { GrapeSwagger::ActiveModelSerializers::Parser.new(model, endpoint) }

  describe '#call' do
    it 'returns hash' do
      expect(parser.call).to be_a(Hash)
    end
  end

  describe '#build_model_resource_attributes_info' do
    subject { parser.send(:build_model_resource_attributes_info, model) }

    it 'returns hash' do
      expect(subject).to be_a(Hash)
    end

    context 'model is serializer for active model' do
      let(:model) { Api::BookSerializer }

      it 'has {id: { type: :integer }}' do
        expect(subject[:id]).to eq({ type: :integer})
      end

      it 'has {title: { type: :string}}' do
        expect(subject[:title]).to eq({ type: :string})
      end
    end

    context 'model does not have _attribute_types' do
      let(:model) { Api::BookGenreSerializer }
      it 'returns empty hash' do
        expect(subject).to eq({})
      end
    end
  end

  describe '#model_resource_class' do
    it 'returns resource class from serializer class' do
      expect(parser.send(:model_resource_class, model)).to eq(Book)
    end
  end

  describe '#model_resource_class_name' do
    it 'returns model name from serializer class' do
      expect(parser.send(:model_resource_class_name, model)).to eq('Book')
    end
  end
end
