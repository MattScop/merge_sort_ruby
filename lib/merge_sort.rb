def merge_sort(arr)
  if arr.length < 2
    return arr
  else
    # split
    arr = arr.each_slice((arr.size / 2.0).round).to_a
    left = merge_sort(arr.first)
    right = merge_sort(arr.last)
    # merge
    l = 0
    r = 0
    i = 0
    sorted_arr = []
    while l < left.length && r < right.length
      if left[l] <= right[r]
        sorted_arr << left[l]
        l += 1
      elsif left[l] >= right[r]
        sorted_arr << right[r]
        r += 1
      end
      i += 1
    end

    while l < left.length
      sorted_arr[i] = left[l]
      l += 1
      i += 1
    end
    
    while r < right.length
      sorted_arr[i] = right[r]
      r += 1
      i += 1
    end
  end
  sorted_arr
end

arr = [5, 3, 8, 8, 2, 4, 7, 9]
merge_sort(arr)
