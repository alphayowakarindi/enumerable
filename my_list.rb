class MyList
  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each
    yield @list
  end
end