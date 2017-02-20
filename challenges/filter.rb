#
#
#  def find_item(array)
#    result = []
#    array.each do |element|
#      if yield(element)
#        result << element
#        break
#      end
#    end
#    result
#  end
#
# p find_item([1,2,4,5]){|n| n > 4}


# class Array
#   def find_item
#     result = []
#     self.each do |item|
#       if yield(item)
#         result << item
#         break
#       else
#         nil
#       end
#     end
#     result
#   end
# end
arr = [2,4,6,8]
#
# puts arr.find_item {|n| n == 2}


class Array
  def reduce_a init
    accu = init
    self.each do |item|
      accu = yield accu item
    end
    accu
  end
end
puts arr.reduce_a {|n| n + 2}
