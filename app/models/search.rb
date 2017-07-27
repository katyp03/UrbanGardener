class Search
  #implement HTTParty for search results
  include HTTParty
  base_uri 'http://food2fork.com/api'
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for term
    post("/search", query: { q: term})["recipes"]
  end
end
