require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'é válido com título, ano e elenco'
  it 'não é válido sem um título'
  it 'não é válido se outro filme possuir mesmo título'
  it 'não é válido sem ano de lançamento'
  it 'não é válido sem um ano de lançamento válido'
  it 'não é válido sem elenco de atores'
end
