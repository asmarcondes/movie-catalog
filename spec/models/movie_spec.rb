require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject do
    described_class.new(
      title: 'Título 1',
      launch_year: 1980,
      actors: [Actor.new(name: 'Ator 1', email: 'ator1@x.com', birth_year: 1980)]
    )
  end

  it 'é válido com título, ano e elenco' do
    expect(subject).to be_valid
  end

  it 'não é válido sem um título' do
    subject.title = nil

    expect(subject).to_not be_valid
  end

  it 'não é válido se outro filme possuir mesmo título' do
    subject.save

    movie2 = Movie.new
    movie2.title = subject.title
    movie2.launch_year = 1980
    movie2.actors << Actor.new(name: 'Ator 1', email: 'ator1@x.com', birth_year: 1980)
    movie2.save

    expect(movie2).to_not be_valid
  end

  it 'não é válido sem ano de lançamento' do
    subject.launch_year = nil

    expect(subject).to_not be_valid
  end

  it 'não é válido com ano de lançamento menor do que 1888' do
    subject.launch_year = 1887

    expect(subject).to_not be_valid
  end

  it 'não é válido com ano de lançamento sem número válido' do
    # Movie#launch_year é definido como 0
    # movie = Movie.new(launch_year: 'xxx')
    # movie = Movie.new(launch_year: false)

    subject.launch_year = []
    expect(subject).to_not be_valid

    subject.launch_year = true
    expect(subject).to_not be_valid

    subject.launch_year = 'banana'
    expect(subject).to_not be_valid
  end

  it 'não é válido sem elenco de atores' do
    subject.actors.clear

    expect(subject).to_not be_valid
  end
end
