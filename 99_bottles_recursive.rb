def beer(n)
  if n > 2
    puts "#{n} bottles of beer on the wall, #{n} bottles of beer.
    Take one down and pass it around, #{n-1} bottles of beer on the wall."
  elsif  n == 2
    puts "#{n} bottles of beer on the wall, #{n} bottles of beer.
    Take one down and pass it around, #{n-1} bottle of beer on the wall"
  elsif n == 1
    puts "#{n} bottle of beer on the wall, #{n} bottle of beer.
    Take one down and pass it around, no bottles of beer on the wall."
  end     #### elsif statements exist due to exceptions in singularization in lyrics

  if n == 0
    puts "No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, more bottles of beer on the wall."
  else
    puts beer(n - 1) ##recursive case
  end
end




puts "How many beers on the wall? (Please enter an integer)"
n = gets.to_i
beer(n)
