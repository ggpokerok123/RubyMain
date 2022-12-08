def create_matrix(n)
  matrix = Array.new(n) { Array.new(n) }

  (0..n - 1).each do |i|
    (0..n - 1).each do |j|
      if i == j
        matrix[i][j] = 1
      else
        matrix[i][j] = rand 10
      end
    end
  end
  return matrix
end

def multiplication(matrix, n, num)
  m = Array.new(n) {Array.new(n)}
  (0..n - 1).each do |i|
    (0..n - 1).each do |j|
      m[i][j]=matrix[i][j]*num
    end
  end
  return m
end

def print_matrix(matrix, n)
  (0..n - 1).each do |i|
    (0..n - 1).each do |j|
      puts matrix[i][j]
    end
  end
end

puts "Task 2"
m = create_matrix(2)
puts m.to_s
puts "*********"
num=5
new_m = multiplication(m,2, num)
puts new_m.to_s
