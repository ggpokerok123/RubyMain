class Luggage
  def initialize
    @luggage = Struct.new(:number, :weight)
    @all_luggage = []
  end

  def add_luggage(number, weight)
    @all_luggage << @luggage.new(number, weight)
  end

  def task_a
    puts "a"
    average_weight =  @all_luggage.inject(0){|sum, luggage| sum + luggage.weight } / @all_luggage.inject(0){|sum, luggage| sum + luggage.number }
    puts "Average weight: #{average_weight}"
    @all_luggage.select {|luggage| puts "luggage: #{luggage.number} things, #{luggage.weight} kg"  if ((luggage.weight / luggage.number) - average_weight).abs <= 0.3}
  end

  def task_b
    puts "b"
    puts "More than two things: #{@all_luggage.select {|luggage| luggage.number > 2}.count}"
    average_number =  @all_luggage.inject(0){|sum, luggage| sum + luggage.number } / @all_luggage.count
    puts "More than average number of things: #{@all_luggage.select {|luggage| luggage.number > average_number}.count}"
  end

  def task_c
    puts "c"
    temp = []
    @all_luggage.each do |luggage|
      @all_luggage.each do |luggage2|
        if luggage.number == luggage2.number && (luggage.weight - luggage2.weight).abs <= 0.5 &&
          luggage != luggage2 && !temp.include?([luggage, luggage2]) && !temp.include?([luggage2, luggage])
          puts "luggage: #{luggage.number} things, #{luggage.weight} kg and #{luggage2.weight} kg"
          temp << [luggage, luggage2]
        end
      end
    end
    if temp.empty?
      puts "No such luggage"
    end
  end

  def task_d
    puts "d"
    temp_l = @luggage.new(0, 0)
    @all_luggage.each do |luggage|
      if luggage.number > temp_l.number && luggage.weight > temp_l.weight
        temp_l = luggage
      end
    end
    if temp_l.number != 0 && temp_l.weight != 0
      puts "Max luggage: #{temp_l.number} things, #{temp_l.weight} kg"
    else
      puts "No max luggage"
    end
  end

  def task_e
    puts "e"
    @all_luggage.select {|luggage| puts "luggage: #{luggage.number} things, #{luggage.weight} kg"  if (luggage.number == 1 && luggage.weight < 30)}
  end

end


luggage = Luggage.new

luggage.add_luggage(5, 2.5)
luggage.add_luggage(6, 5.0)
luggage.add_luggage(7, 8.8)
luggage.add_luggage(9, 9.0)
luggage.add_luggage(5, 2.25)
luggage.add_luggage(1, 1.0)

luggage.task_a
luggage.task_b
luggage.task_c
luggage.task_d
luggage.task_e