def bubble_sort(array)
  start = 0
  left = 0
  right = 1
  last = array.length-1

  until start >= last
    if array[left] > array[right]
      temp = array[left]
      array[left] = array[right]
      array[right] = temp
    end

    if right == last
      left = start
      right = left + 1
      last -= 1
    else
      left += 1
      right += 1
    end
  end

  array
end