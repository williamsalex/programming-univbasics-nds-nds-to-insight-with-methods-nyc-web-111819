require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
#def gross_for_director(director_data)
#  directorNest = directors_database[director]
#  total_gross = 0 
#  for y in directorNest[:movies] do
#    total_gross = total_gross + y[:worldwide_gross]
#  end
#  total_gross
#end

def gross_for_director(director_data)
  total_gross = 0
  for x in director_data[:movies]
    total_gross = total_gross + x[:worldwide_gross]
  end
  total_gross
end

#def directors_totals(nds)
#  hash = {}
#  for x in directors_database
#    total_gross = 0
#    for y in x[:movies]
#      total_gross = total_gross + y[:worldwide_gross]
#    end
#    hash[x[:name]] = total_gross
#  end
#  hash
#end

def directors_totals(nds)
  hash = {}
  for x in nds do
    hash[nds[x][:name]] = gross_for_director(x)
  end
  hash
end