array_a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
array_c = []

def create_array(array_a, array_c)
  j = (array_a.size/2).to_i

  (0..(array_a.size/2)-1).each { |i|
    array_c[i] = array_a[j-1]
    j = j -1
  }

  k = array_a.size.to_i

  (array_a.size / 2..array_a.size-1).each { |i|
    array_c[i] = array_a[k-1]
    k=k-1
  }
end

create_array(array_a, array_c)
puts array_c.to_s
