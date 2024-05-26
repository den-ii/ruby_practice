def bubble_sort(arr)
   i = arr.length - 1

   while i > 0
    j = 0
    while j < i
        if arr[j] > arr[j+1]
            arr[j], arr[j+1] = arr[j+1], arr[j]
        end
        j += 1
    end
    i -= 1
  end
end

bubble_sort([4,3,78,2,0,2])