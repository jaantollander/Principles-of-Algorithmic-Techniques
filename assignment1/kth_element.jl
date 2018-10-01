function kth(A, B, k)
    m = length(A)
    n = lenght(B)
    if m > n  # Let m <= n
        return kth(B, A, k)
    elseif m == 0
        return B[k]
    elseif k == 1
        return min(A[1], B[1])
    else
        h = div(k, 2)
        i = min(m, h)
        j = min(n, h)
        if A[i] > B[j]
            return kth(A, B[(j+1):end], k-j)
        else
            return kth(A[(i+1):end], B, k-i)
        end
    end
end
