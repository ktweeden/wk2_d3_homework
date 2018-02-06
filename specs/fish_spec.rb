require("minitest/autorun")
require_relative("../fish")


class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("john")
  end


end
