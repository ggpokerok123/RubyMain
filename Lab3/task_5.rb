puts "task 5"

def y(x, c, n)
  (((x**(2.0/c)+n**(2.0/c))**2-4*x**(2.0/c+2.0/n))/((x**(1.0/n)-x**(1.0/c))**2+3*x**(1.0/n+1.0/c)))**1.0/2 +
    ((x**2+2*x-4)/(c+x))
end

def z(x, c)
  ((Math.sin(x)**2+Math.tan(x)**2+1)*(Math.cos(x)**2
  -((Math.cos(x)**2)/(Math.sin(x)**2))+1))/((Math.cos(x)**2+((Math.cos(x)**2)/(Math.sin(x)**2))+1)*(Math.sin(x)**2+Math.tan(x)**2-1))
end

def f(x, c, n)
  case x
  when 2...n
    return y(x, c, n)
  when n...2*n
    return z(x,c)
  else
    return y(x, c, n) + z(x, c)
  end
end

def subtask1(c, n)
  x = 1.0
  step = (n - 1)/(n + c)
  puts "step is #{step}"
  while x <= n
    puts "#{x} | #{y(x, c, n).round(10)}"
    x += step
  end
end

def subtask2(c, n)
  x = Math::PI / n
  step = (Math::PI - x)/((3/2)*n + c)
  puts "step is #{step}"
  while x <= Math::PI
    puts "#{x} | #{z(x,c)}"
    x += step
  end
end

def subtask3(c, n)
  x = 2.0
  step = (c - 2)/(2 * n)
  puts "step is #{step}"
  while x <= c
    puts "#{x} | #{f(x, c, n)}"
    x += step
    return if x == c && step == 0
  end
end

puts "Task 5"
print "Enter N: "
n = gets.chomp.to_f

print "Enter c: "
c = gets.chomp.to_f

puts "Subtask 1:"
puts "x  |  Y"
subtask1(c, n)


puts "\nSubtask 2:"
puts "x  |  Z"
subtask2(c, n)

puts "\nSubtask 3:"
puts "x  |  F"
subtask3(c, n)