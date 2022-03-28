def digital_root(num)
  if num < 10
    num
  else
    sum = 0
    num.to_s.each_char {|c| sum += c.to_i}
    digital_root(sum)
  end
end

num = digital_root(gets.to_i)
p num
