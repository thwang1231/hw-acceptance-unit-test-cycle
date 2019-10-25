require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "returns similar movies" do
    movie1 = Movie.create(title: 'something', director: 'WTH')
    movie2 = Movie.create(title: 'something2', director: 'WTH')
    movie3 = Movie.create(title: 'something3', director: 'WTH')
    expect(Movie.find_similar_movies('yiwei')).to eq [movie1, movie2]
  end
end
