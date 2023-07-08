require_relative 'my_enumerables'

# Represents a list of elements that pass certain conditions
class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

result = list.all? do |e|
  e < 5
end

puts result
