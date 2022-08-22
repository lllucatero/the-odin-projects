def bubble_sort(array)
  loop do
    changed = false
    array.each_with_index do |number, index|
      swap = 0
      if array[index+1] != nil && number > array[index+1]
        swap = array[index+1]
        array[index+1] = number
        array[index] = swap
        changed = true
      end
    end
    break if not changed
  end
  p array
end

bubble_sort([3, 2, 1, 0, 10, 4, 9])