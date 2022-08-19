
class MyList 
  def initialize(*args)
    @list = args
  end

  def each
    yield @list
  end
end


# %w[ant bear cat].all? { |word| word.length >= 3 } #=> true

ourList = MyList.new(1,2,3,4,5,6,77,8)
p ourList
puts ourList.each { |x| puts x }