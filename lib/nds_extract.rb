require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director)
  directorNest = directors_database[director]
  
end

def directors_totals(nds)
  hash = {}
  for x in directors_database
    total_gross = 0
    for y in x[:movies]
      total_gross = total_gross + y[:worldwide_gross]
    end
    hash[x[:name]] = total_gross
  end
  hash
end
