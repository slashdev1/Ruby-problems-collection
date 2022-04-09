def MinWindowSubstring(strArr)
  def fill_arr_positions(i, arr_size, stack_arr)
    if i == arr_size
      @arr_positions << [stack_arr.min, stack_arr.max]
      return
    end

    @arr[i].each_with_index do |elem, j|
      fill_arr_positions(i + 1, arr_size, stack_arr.dup << elem)
    end
  end

  return "" unless strArr.count == 2

  strN = strArr[0]
  strK = strArr[1]

  return "" if strN.length < strK.length || strK.length == 0

  @arr = []
  h = {}
  strK.chars.each_with_index do |cK, indK|
    if h.key? cK # current symbol occurs more than one time
      @arr << [@arr[h[cK]].pop]
      next
    end

    h[cK] = indK
    @arr << []
    strN.chars.each_with_index do |cN, indN|
      @arr[indK] << indN if cK == cN
    end
  end

  # there is at least one symbol which doesn't occur in StrN
  return "" if @arr.any? {|elem| elem.count == 0}

  @arr_positions = []
  fill_arr_positions(0, @arr.count, [])
  if !true
    ind_min = 0
    length_min = -1
    @arr_positions.each_with_index { |elem, ind| ind_min, length_min = ind, elem[1] - elem[0] if length_min == -1 || length_min > elem[1] - elem[0] }

    strN[@arr_positions[ind_min][0]..@arr_positions[ind_min][1]]
  else
    elem = @arr_positions.min_by {|elem| elem[1] - elem[0]}
    strN[elem[0]..elem[1]]
  end
end

puts MinWindowSubstring(['ahffaksfajeeubsne', 'jefaa'])