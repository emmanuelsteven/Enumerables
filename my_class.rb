require_relative 'my_enumerable'
# Represents a list of elements that pass certain conditions
class MyList
  include MyEnumerable

  def initialize(*element)
    @list = element
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)
list.all? { |e| e < 5 }
