$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
 movies_money= {}
  row_index = 0 
  while nds[row_index] do
    sum = 0 
    num_movies=0 
    while nds[row_index][:movies][num_movies] do
      sum += nds[row_index][:movies][num_movies][:worldwide_gross]
      num_movies += 1 
    end
    movies_money[nds[row_index][:name]]= sum    
    index += 1
  end
  nil
  return movies_money
end
