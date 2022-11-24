require 'rails_helper'

RSpec.describe Review, type: :model do
  it 'é válido com texto e filme associado' do
    review = Review.new
    review.comment = 'Primeiro comentario'
    review.movie = 'Movie 1'

    expect(review).to be_valid  
  end
  
end

  it 'não é válido sem texto' do
    review = Review.new(comment: nil)
    review.movie = 'Movie 1'

    expect(review).to_not be_valid
  end


  it 'não é válido sem filme associado' do
    review = Review.new(movie: nil)
    review.comment = 'Primeiro comentario'

    expect(review).to_not be_valid
  end


  it 'deve ser registrado sem estar aprovado' do
    review = Review.new(comment.approved: false)
    review.comment = 'Primeiro comentario'
    review.movie = 'Movie 1'

    expect(review).to be_valid
  end