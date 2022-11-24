require 'rails_helper'

RSpec.describe Actor, type: :model do
  it 'é válido com nome, ano de nascimento e e-mail'
  it 'não é válido sem nome'
  it 'não é válido sem ano de nascimento'
  it 'não é válido com ano de nascimento inválido'
  it 'não é válido sem e-mail'
  it 'não é válido com e-mail já existente'
end
