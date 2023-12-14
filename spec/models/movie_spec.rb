require 'spec_helper'

describe Movie do
    describe 'searching Tmdb by keyword' do
    it 'calls Faraday gem with ... domain' do
    expect(Faraday).to receive(:get).with('https://api.themoviedb.org/3/search/movie?api_key=80bd9b4e4d174eb23d8078cff5857c49&query=Inception')

    Movie.find_in_tmdb('https://api.themoviedb.org/3/search/movie?api_key=80bd9b4e4d174eb23d8078cff5857c49&query=Inception')
    end
    it 'calls Tmdb with valid API key' do
        Movie.find_in_tmdb({title: "hacker", language: "en"})
    end
       
    end

end