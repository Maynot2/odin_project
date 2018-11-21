def bubble_sort(ary)
  max_iterations = ary.size - 1
  check_to = -1

  max_iterations.times do
    sorted = true

    ary[0..check_to].each_with_index do |el, i|
      next if ary[i + 1].nil?
      if el > ary[i + 1]
        ary[i], ary[i + 1] = ary[i + 1], ary[i]
        sorted = false
      end 
    end
    check_to -= 1
    break if sorted
  end

  ary
end
