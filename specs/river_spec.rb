require("minitest/autorun")
require_relative("../river")


class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @number_of_fish = @river.fish().length
  end

  def test_get_river_name
    assert_equal("Amazon", @river.name())
  end

  def test_populate_river
    assert(@river.fish().count >=10 && @river.fish().count < 30)
  end

  def test_remove_fish
    @river.remove_fish()
    assert_equal(@number_of_fish -1, @river.fish().count)
  end

  def test_count_fish
    assert_equal(@number_of_fish, @river.count_fish)
  end

end
