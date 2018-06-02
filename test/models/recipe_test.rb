require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: "chicken tikka", summary: "famous Indian chicken tikka",
                         description: "Ingredients: some chicken breasts ppasflaslfa jfdhg")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end

  test "name should not be too long" do
    @recipe.name = "dshghfjsdgjshjdfkj gsdhfgkjdsfghjsg ksjdhgfkdsfjkdsg" * 10
    assert_not @recipe.valid?
  end

  test "name should not be too short" do
    @recipe.name = "e"
    assert_not @recipe.valid?
  end

  test "summary should present" do
    @recipe.summary = " "
    assert_not @recipe.valid?
  end

  test "summary should not be too long or short" do
    @recipe.summary = "dsh"
    assert_not @recipe.valid?
  end

  test "description should be present" do
    @recipe.description = ""
    assert_not @recipe.valid?
  end

  test "description shuold not be too long or too short" do
    @recipe.description = "sdf" * 1000
    assert_not @recipe.valid?
  end

end