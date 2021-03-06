def reverse(arr)
  reversed_arr = []
  arr_index = -1
  reversed_arr_index = 0
  while reversed_arr_index < arr.size
    reversed_arr[reversed_arr_index] = arr[arr_index]
    reversed_arr_index += 1
    arr_index -= 1
  end
  reversed_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

#__Launch School Solution____________________________

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end