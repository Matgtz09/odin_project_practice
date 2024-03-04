def stock_picker(array)
  left = 0
  right = 1
  last = array.length-1
  ans = []

  until left == last do
    if ans.empty? || array[right] - array[left] > array[ans.last] - array[ans.first]
      ans = [left, right]
    end

    if right == last
      left += 1
      right = left + 1
    else
      right += 1
    end
  end

  ans
end