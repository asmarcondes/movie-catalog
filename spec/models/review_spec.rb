require 'rails_helper'

RSpec.describe Review, type: :model do
  it 'é válido com texto e filme associado' do
    movie = Movie.new(title: 'Movie 1', launch_year: 1980,
                      actors: [Actor.new(name: 'Ator 1', email: 'ator1@teste.com', birth_year: 1980)])

    review = Review.new
    review.comment = 'Primeiro comentario'
    review.rating = 0

    review.movie = movie

    expect(review).to be_valid
  end

  it 'não é válido sem texto' do
    movie = Movie.new(title: 'Movie 1', launch_year: 1980,
                      actors: [Actor.new(name: 'Ator 1', email: 'ator1@teste.com', birth_year: 1980)])

    review = Review.new(comment: nil)
    review.rating = 0
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
    movie = Movie.new(title: 'Movie 1', launch_year: 1980,
                      actors: [Actor.new(name: 'Ator 1', email: 'ator1@teste.com', birth_year: 1980)])

    review = Review.new(approved: false)
    review.movie = movie
    review.rating = 0
    review.comment = 'Primeiro comentario'

    expect(review).to be_valid
  end

  it 'deve registrar um log ao aprovar comentário' do
    movie = Movie.new(title: 'Movie 1', launch_year: 1980,
                      actors: [Actor.new(name: 'Ator 1', email: 'ator1@teste.com', birth_year: 1980)])

    review = Review.new(approved: false)
    review.movie = movie
    review.rating = 0
    review.comment = 'Primeiro comentario'

    review.save
    review.update({ approved: true })

    log = Log.find_by(review_id: review.id)

    expect(log).to_not be_nil
  end
end
