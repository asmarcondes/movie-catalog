require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject(:movie) { described_class.new(title:, launch_year:, actors:) }

  let(:title) { 'Título 1' }
  let(:launch_year) { 1980 }
  let(:actors) { [Actor.new(name: 'Ator 1', email: 'ator1@teste.com', birth_year: 1980)] }

  describe '.new' do
    context 'com atributos válidos' do
      it { is_expected.to be_a(described_class) }
      it { is_expected.to be_valid }
    end
  end

  describe '#valid?' do
    context 'com título inválido' do
      [nil].each do |title|
        context "quando título é #{title.inspect}" do
          let(:title) { title }

          it { is_expected.to be_a(described_class) }
          it { is_expected.to be_invalid }
        end
      end
    end

    context 'com título duplicado' do
      it 'não é válido' do
        subject.save

        movie2 = Movie.new
        movie2.title = subject.title
        movie2.launch_year = 1980
        movie2.actors << Actor.new(name: 'Ator 1', email: 'ator1@teste.com', birth_year: 1980)
        movie2.save

        expect(movie2).to_not be_valid
      end
    end

    context 'com ano inválido' do
      [nil, 1887, [], true, 'banana'].each do |launch_year|
        context "quando o ano é #{launch_year.inspect}" do
          let(:launch_year) { launch_year }
          it { is_expected.to be_invalid }
        end
      end
    end

    context 'sem elenco' do
      let(:actors) { [] }
      it { is_expected.to be_invalid }
    end
  end
end
