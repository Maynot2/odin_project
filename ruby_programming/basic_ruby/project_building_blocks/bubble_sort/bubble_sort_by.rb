def bubble_sort_by(ary)
  max_iterations = ary.size - 1
  check_to = -1

  max_iterations.times do
    swaps = 0

    ary[0..check_to].each_with_index do |_, i|
      next if ary[i + 1].nil?

      result = yield(ary[i], ary[i + 1])
      ary[i], ary[i + 1] = ary[i + 1], ary[i] if result > 0

      swaps += 1
    end
    check_to -= 1
    break if swaps == 0
  end

  ary
end