def separate_w_commas num
  p num.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end

separate_w_commas (0)
