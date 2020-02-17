$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  pp nds
  hash = {} 

i = 0 
total = 0 
y = 0 
while i < nds.length do 
  while y < nds[i][:movies].length do 
    total += nds[i][:movies][y][:worldwide_gross]
    y += 1
  end 
  hash[nds[i][:name]] = total 
  total = 0 
  y = 0
  i += 1
end 
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  hash
end
