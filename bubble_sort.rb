def bubble_sort(arr)
  idx = 0
  while idx < arr.length
    arr.each do |x|
      a = arr.index(x)
      y = arr.index(x) + 1
      next unless y < arr.length && x > arr[y]

      arr[a], arr[y] = arr[y], arr[a]
    end
    idx += 1
  end
  arr
end

def bubble_sort_by(arr)
  loop do
    flag = false
    arr.each_with_index do |_val, i|
      next if i == arr.length - 1

      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        flag = true
      end
    end
    break unless flag
  end
  arr
end
