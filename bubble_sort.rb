# frozen_string_literal: true

def bubble_sort(arr)
  i = arr.length - 1

  while i.positive?
    j = 0
    while j < i
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
      j += 1
    end
    i -= 1
  end
end

bubble_sort([4, 3, 78, 2, 0, 2])
