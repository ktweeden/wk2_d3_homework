require("minitest/autorun")
require_relative("../river")


class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", 3)
  end

  def test_get_river_name
    assert_equal("Amazon", @river.name())
  end

  def test_populate_river
    assert_equal(3, @river.fish().count)
  end

  def test_remove_fish
    @river.remove_fish()
    assert_equal(2, @river.fish().count)
  end

  def test_count_fish
    assert_equal(3, @river.count_fish)
  end

end
