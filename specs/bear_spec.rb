require("minitest/autorun")
require_relative("../bear")
require_relative("../river")


class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi")
    @river = River.new("Amazon")
    @number_of_fish = @river.fish().length
  end

  def test_take_fish()
    @bear.take_fish(@river)
    assert_equal(@number_of_fish -1, @river.fish.count)
  end

  def test_roar()
    result = @bear.roar
    assert_equal("ROAR", result)
  end

  def test_count_food()
    @bear.take_fish(@river)
    result = @bear.count_food
    assert_equal(1, result)
  end
end
