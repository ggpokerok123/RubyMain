puts "Task4"

def factorial(n)
  n > 0 ? (n) * factorial(n-1):1
end

def sum1
  sum=0
  n = gets.chomp.to_i
  (2..n).each {
    |i|
    sum += ((factorial(i-1).to_f/factorial(i+1).to_f).to_f)**(i*(i+1))
  }
  sum

end

puts "sum1 - "
puts sum1