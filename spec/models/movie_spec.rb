require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'é válido com título, ano e elenco' do
    movie = Movie.new
    movie.title = 'titulo'
    movie.launch_year = 1980
    movie.actors << Actor.new(name: 'Ator 1', email: 'ator1@x.com', birth_year: 1980)

    expect(movie).to be_valid
  end

  it 'não é válido sem um título' do
    movie = Movie.new(title: nil)
    movie.launch_year = 1980
    movie.actors << Actor.new(name: 'Ator 1', email: 'ator1@x.com', birth_year: 1980)

    expect(movie).to_not be_valid
  end

  it 'não é válido se outro filme possuir mesmo título' do
    movie1 = Movie.new
    movie1.title = 'titulo 1'
    movie1.save

    movie2 = Movie.new
    movie2.title = 'titulo 1'
    movie2.save

    expect(movie2).to_not be_valid
  end

  it 'não é válido sem ano de lançamento' do
    movie = Movie.new(launch_year: nil)
    movie.title = 'titulo 1'
    movie.actors << Actor.new(name: 'Ator 1', email: 'ator1@x.com', birth_year: 1980)

    expect(movie).to_not be_valid
  end

  it 'não é válido com ano de lançamento menor do que 1888' do
    movie = Movie.new(launch_year: 1887)
    movie.title = 'titulo 1'
    movie.actors << Actor.new(name: 'Ator 1', email: 'ator1@x.com', birth_year: 1980)

    expect(movie).to_not be_valid
  end

  it 'não é válido com ano de lançamento sem número válido' do
    # Movie#launch_year é definido como 0
    # movie = Movie.new(launch_year: 'xxx')

    movie = Movie.new
    movie.launch_year = []
    movie.title = 'titulo 1'
    movie.actors << Actor.new(name: 'Ator 1', email: 'ator1@x.com', birth_year: 1980)

    expect(movie).to_not be_valid
  end

  it 'não é válido sem elenco de atores' do
    movie = Movie.new
    movie.title = 'titulo 1'
    movie.launch_year = 1980

    expect(movie).to_not be_valid
  end
end
