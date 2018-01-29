RSpec.describe GrapeSwagger::ActiveModelSerializers do
  it 'has a version number' do
    expect(GrapeSwagger::ActiveModelSerializers::VERSION).not_to be nil
  end

  it 'parser should be registred' do
    expect(GrapeSwagger.model_parsers.to_a).to include([GrapeSwagger::ActiveModelSerializers::Parser, 'ActiveModel::Serializer'])
  end
end
