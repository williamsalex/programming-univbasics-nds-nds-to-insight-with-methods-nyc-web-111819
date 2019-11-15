require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def gross_for_director(director_data)
  total_gross = 0
  for x in director_data[:movies]
    total_gross = total_gross + x[:worldwide_gross]
  end
  total_gross
end

def directors_totals(nds)
  hash = {}
  for x in nds do
    hash[x[:name]] = gross_for_director(x)
  end
  hash
end