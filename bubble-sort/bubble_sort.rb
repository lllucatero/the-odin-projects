# frozen_string_literal: true

def bubble_sort(array)
  loop do
    changed = false
    array.each_with_index do |_number, index|
      if !array[index + 1].nil? && array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        changed = true
      end
    end
    break unless changed
  end
  p array
end

bubble_sort([5, 4, 3, 2, 1])
