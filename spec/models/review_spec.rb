require 'rails_helper'

RSpec.describe Review, type: :model do
  it 'é válido com texto e filme associado' do
    review = Review.new
    review.comment = 'Primeiro comentario'
    review.rating = 0

    movie = Movie.new(title: 'Movie 1', launch_year: 1980,
                      actors: [Actor.new(name: 'Ator 1', email: 'ator1@teste.com', birth_year: 1980)])
    review.movie = movie

    expect(review).to be_valid
  end

  it 'não é válido sem texto' do
    review = Review.new(comment: nil)
    review.rating = 0
    movie = Movie.new(title: 'Movie 1', launch_year: 1980,
                      actors: [Actor.new(name: 'Ator 1', email: 'ator1@teste.com', birth_year: 1980)])
    review.movie = movie

    expect(review).to_not be_valid
  end

  it 'não é válido sem filme associado' do
    review = Review.new(movie: nil)
    review.rating = 0
    review.comment = 'Primeiro comentario'

    expect(review).to_not be_valid
  end

  it 'deve ser registrado sem estar aprovado' do
    review = Review.new(approved: false)
    review.rating = 0
    review.comment = 'Primeiro comentario'

    movie = Movie.new(title: 'Movie 1', launch_year: 1980,
                      actors: [Actor.new(name: 'Ator 1', email: 'ator1@teste.com', birth_year: 1980)])
    review.movie = movie

    expect(review).to be_valid
  end
end
