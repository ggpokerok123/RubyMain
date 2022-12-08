def task1(a, b, c, x, y, z)
  puts "1."
  puts "a) !(a || b) && (a && !b) - #{!(a || b) && (a && !b)}"
  puts "b) (z!=y)<=>(6>=y) && a||b&&c&&x>=1.5 - #{(z!=y) <=> (6>=y) && a || b && c && x >= 1.5}"
  puts "c) (8 - x*2 <= z) && (x^2<>y^2) || (z >= 15) - #{(8 - x*2 <= z) && (x**2<=>y**2) || (z >= 15)}"
  puts "d) x>0 && y<0 || z >= (x*y - (-y/x)) + (-z) - #{x>0 && y<0 || z >= (x*y - (-y/x)) + (-z)}"
  puts "e) !(a || b && !(c || (!a || b))) - #{!(a || b && !(c || (!a || b)))}"
  puts "f) x^2 + y^2 >= 1 && x >= 0 && y <= 0 - #{x**2 + y**2 >= 1 && x >= 0 && y <= 0}"
  puts "g) (a && (c && b<=> b||a)||c)&&b - #{(a && (c && b <=> b || a) || c) && b}"
end

def task2(x, p)
  puts "2."
  puts "(ln(x)<x && !p && (sqrt(x)>x*x) || (2*x=x) - #{(Math.log(x, Math.exp(1))<x) && !p && (Math.sqrt(x)>x*x) && (2*x==x)}"
end

puts "Task1"
task1(true, false, false , 4, 120, -20)
task2(7, 0)