def fibonacci(n)
  sequence = [0,1]
  puts sequence[n] if n == 0 || n == 1

  until sequence.length == n + 1
    sequence << sequence[-1].to_i + sequence[-2].to_i
  end
  p sequence
  return sequence.last
end


puts "Please enter an INTEGER to find it's fibonacci value"
n = gets.to_i
puts fibonacci(n)
