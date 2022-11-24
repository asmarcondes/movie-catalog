require 'rails_helper'

RSpec.describe Actor, type: :model do
  it 'é válido com nome, ano de nascimento e e-mail' do
    actor = Actor.new
    actor.name = 'Megan Fox'
    actor.birth_year = 1986
    actor.email = 'megan@fox.com'

    expect(actor).to be_valid
  end

  it 'não é válido sem nome' do
    actor = Actor.new(name: nil)
    actor.birth_year = 1986
    actor.email = 'megan@fox.com'

    expect(actor).to_not be_valid
  end

  it 'não é válido sem ano de nascimento' do
    actor = Actor.new(birth_year: nil)
    actor.name = 'Megan Fox'
    actor.email = 'megan@fox.com'

    expect(actor).to_not be_valid
  end

  it 'não é válido com ano de nascimento inválido' do
    actor = Actor.new(birth_year: 1910)
    actor.name = 'Megan Fox'
    actor.email = 'megan@fox.com'

    expect(actor).to_not be_valid
  end

  it 'não é válido sem e-mail' do
    actor = Actor.new(email: nil)
    actor.name = 'Megan Fox'
    actor.birth_year = 1986

    expect(actor).to_not be_valid
  end

  it 'não é válido com e-mail já existente' do
    actor1 = Actor.new
    actor1.email = 'megan@fox.com'
    actor1.save

    actor2 = Actor.new
    actor2.email = 'megan@fox.com'
    actor2.save

    expect(actor).to_not be_valid
  end
