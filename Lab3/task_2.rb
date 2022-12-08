def y(x)
  case x
  when -4..0
    return ((x-2).abs / (x**2 * Math.cos(x)))**(1.0/7.0)
  when 0..12
    return 1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(1.0/4.5)
  else
    return 1 / ( 1 + x / (1 + x / (1 + x)))
  end
end


puts "Task 2"
puts "y(-3) = #{y(-3)}"
puts "y(-0.5) = #{y(-0.5)}"
puts "y(5) = #{y(5)}"
puts "y(10.9) = #{y(10.9)}"
puts "y(13) = #{y(13)}"
puts "y(39.93) = #{y(39.93)}"