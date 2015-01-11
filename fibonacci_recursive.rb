def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

puts "Please enter an INTEGER to find it's fibonacci value"
n = gets.to_i
puts fibonacci(n)
