require 'test_helper'

class ChefTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.new(name: "Ramsey", email: "some@some.com")
  end

  test "name should be present" do
    @chef.name = ""
    assert_not @chef.valid?
  end

  test "name should not be too long or short" do
    @chef.name = "dd" * 40
    assert_not @chef.valid?
  end

  test "email should be present" do
    @chef.email = " "
    assert_not @chef.valid?
  end

  test "email should be in format" do
    @chef.email = "djhf@jadhf.45"
    assert_not @chef.valid?
  end
end