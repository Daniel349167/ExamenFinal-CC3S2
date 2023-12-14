class Movie < ActiveRecord::Base
    def self.all_ratings
      ['G', 'PG', 'PG-13', 'R']
    end
    
    def self.with_ratings(ratings, sort_by)
      if ratings.nil?
        all.order sort_by
      else
        where(rating: ratings.map(&:upcase)).order sort_by
      end
    end

    def self.find_in_tmdb(params)
      api_key = "80bd9b4e4d174eb23d8078cff5857c49" # Reemplaza esto con tu clave API de TMDb
      url = "https://api.themoviedb.org/3/search/movie"
      response = Faraday.get(url) do |req|
        req.params['api_key'] = api_key
        req.params['language'] = params[:language] == 'en' ? 'en-US' : nil
        req.params['year'] = params[:release_year] if params[:release_year].present?
        req.params['query'] = params[:title]
      end
    
      if response.success?
        JSON.parse(response.body)['results']
      else
        [] 
      end
    end
    
    
  
end
  