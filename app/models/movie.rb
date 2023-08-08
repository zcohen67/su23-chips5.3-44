class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end
  def self.with_ratings(ratings_list, sort_by)
    # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
    # if ratings_list is nil, retrieve ALL movies
    if ratings_list.nil?
      all.order sort_by
    else
      Movie.where(rating: ratings_list.map(&:upcase)).order sort_by
    end
    #  movies with those ratings
    # if ratings_list is nil, retrieve ALL movies
  end
end
