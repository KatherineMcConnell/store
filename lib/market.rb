class Market
  attr_reader :name

  attr_accessor :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end
end
