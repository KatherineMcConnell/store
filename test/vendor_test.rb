require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/vendor'

class VendorTest < Minitest::Test

  def test_it_exists_and_has_attributes
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_instance_of Vendor, vendor
    assert_equal "Rocky Mountain Fresh", vendor.name
  end

  def test_inventory_check_stock_and_stock
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    vendor = Vendor.new("Rocky Mountain Fresh")

    expected = {}
    assert_equal expected, vendor.inventory
    assert_equal 0, vendor.check_stock(item1)
    vendor.stock(item1, 30)

    expected2 = {item1 => 30}
    assert_equal expected2, vendor.inventory
    assert_equal 30, vendor.check_stock(item1)

    vendor.stock(item1, 25)

    assert_equal 55, vendor.check_stock(item1)
    vendor.stock(item2, 12)

    expected3 ={item1 => 55, item2 => 12}
    assert_equal expected3, vendor.inventory
  end



end
