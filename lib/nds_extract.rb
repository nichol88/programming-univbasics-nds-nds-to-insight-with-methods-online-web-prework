require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  counter = 0
  while counter < nds.length do
    # reset total for each director
    total = 0
    # get array of movies of current director
    movies = nds[counter][:movies]
    # movie array - get all totals and sum
    movie_counter = 0
    while movie_counter < movies.length do
      total = total + movies[movie_counter][:worldwide_gross].to_i
      movie_counter += 1
    end
    result[nds[counter][:name]] = total
    counter += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
    movies = director_data[:movies]
    movie_counter = 0
    while movie_counter < movies.length do
      total = total + movies[movie_counter][:worldwide_gross].to_i
      movie_counter += 1
    end
    total
end
