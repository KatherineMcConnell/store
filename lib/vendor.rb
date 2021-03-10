class Vendor
  attr_reader :name

  attr_accessor :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item] == nil
        @inventory[item] = 0
    else
      @inventory[item]
    end
  end


  def stock(item, quantity)
    if @inventory[item] == nil
        @inventory[item] = quantity
    else
      @inventory[item] += quantity
    end
  end
end
