function local_minimum_search(arr, low, high, n)
    mid = low + div(high - low, 2)
    if ((mid == 1) || (arr[mid] < arr[mid-1])) &&
       ((mid == n) || (arr[mid] < arr[mid+1]))
        return mid
    elseif (mid > 1) && (arr[mid-1] < arr[mid])
        return local_minimum_search(arr, low, mid-1, n)
    else
        return local_minimum_search(arr, mid+1, high, n)
    end
end

function local_minimum(arr)
  n = length(arr)
  # Returns the index of the local minimum
  return local_minimum_search(arr, 1, n, n)
end


arrays = [
    [0],
    # [1, 1],
    [0, 1],
    [1, 0],
    [1, 0, 1],
    [0, 1, 1],
    [1, 1, 0],
    # [1, 1, 1],
]
for a in arrays
    println(a, ": ", a[local_minimum(a)])
end
