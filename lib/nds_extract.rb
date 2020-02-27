@@ -7,6 +7,7 @@ def directors_totals(nds)
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  directors_index = 0
  result = {
  }
  #
@ -18,5 +19,16 @@ def directors_totals(nds)
  #
  #
  # Be sure to return the result at the end!
  nil
  while directors_index < nds.length do
    directors_name = nds[directors_index][:name]
    result[directors_name] = 0 
    movie_index = 0 

    while movie_index < nds[directors_index][:movies].length do
      result[directors_name] += nds[directors_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
    end
    directors_index += 1
  end
  result
end