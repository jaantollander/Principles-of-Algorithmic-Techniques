function local_minimum_search(arr, low, high, n)
    # Works only if n ≥ 3
    mid = low + div(high - low, 2)
    if (mid == 1) || (mid == n) ||
        (arr[mid] ≤ arr[mid-1] && arr[mid] ≤ arr[mid+1])
        return mid
    elseif arr[mid-1] < arr[mid]
        return local_minimum_search(arr, low, mid-1, n)
    else
        return local_minimum_search(arr, mid+1, high, n)
    end
end


# Returns the index of the local minimum
function local_minimum(arr)
  n = length(arr)
  if n == 1
      return 1
  elseif n == 2
      if arr[1] ≤ arr[2]
          return 1
      else
          return 2
      end
  else
    # n ≥ 3
    return local_minimum_search(arr, 1, n, n)
  end
end


arrays = [
    [0],
    [0, 1],
    [1, 0],
    [1, 1],
    [1, 0, 1],
    [0, 1, 1],
    [1, 1, 0],
    [1, 1, 1],
]
for a in arrays
    println(a, ": ", local_minimum(a))
end
