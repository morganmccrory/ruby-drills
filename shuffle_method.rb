def shuffle(array, shuffled_array=[])
  new_array = array.dup
  until new_array.length == 0
    new_array.each_with_index do |item, index|
      if rand(0..new_array.length) == index
        shuffled_array << item
        new_array.delete(item)
      end
    end
  end
  shuffled_array
end

# Driver code:
sorted_array = (1..10).to_a

# This should print a different sequence of numbers each time
p shuffle(sorted_array)
p shuffle(sorted_array)
p shuffle(sorted_array)