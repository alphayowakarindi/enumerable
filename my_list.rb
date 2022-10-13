require_relative 'my_enumerable'

class Mylist
  include Enumerable

  def initialize(*list)
    @list = list
  end

  attr_reader :list
  def each
    return to_enum(:each) unless block_given?

    counter = 0
    while counter < @list.length
      yield(@list[counter])
      counter += 1
    end
    @list
end
end
list_of_nums = Mylist.new(1, 2, 3, 4)

puts list_of_nums.all? #False
puts list_of_nums.any? # true
print list_of_nums.filter? # [2, 4]