def beer(n)
  for n in n.downto(1) do
    puts "#{n} bottle(s) of beer on the wall, #{n} bottle(s) of beer.
    Take one down and pass it around, #{n-1} bottle(s) of beer on the wall."
  end

  puts "No more bottles of beer on the wall, no more bottles of beer.
  Go to the store and buy some more, more bottles of beer on the wall."
end




puts "How many beers on the wall? (Please enter an integer)"
n = gets.to_i
beer(n)
