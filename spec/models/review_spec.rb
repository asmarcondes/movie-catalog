require 'rails_helper'

RSpec.describe Review, type: :model do
  it 'é válido com texto e filme associado'
  it 'não é válido sem texto'
  it 'não é válido sem filme associado'
  it 'deve ser registrado sem estar aprovado'
end
