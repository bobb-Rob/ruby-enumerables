require_relative './MyEnumerable.rb'

class MyList 
  def initialize(*args)
    @list = args
  end

  include MyEnumerable

  def each
    yield @list
  end
end

ourList = MyList.new(1,2,3,4,5,6,77,8)

puts ourList.each { |x| puts x }

ourList.all? { |a| p a }

