require_relative("fish")

class River

  attr_reader :name, :fish

  def initialize(name)
    @name = name
    @fish = []
    populate_river()
  end

  def populate_river()
    potential_names = ["Flounder", "Flotsam", "Jetsam", "Bee", "Bo", "Hermintrude"]
    rand(10..50).times do |x|
      name = potential_names[rand(0..5)]
      @fish << Fish.new(name)
    end
  end

  def remove_fish()
    @fish.pop()
  end

  def count_fish()
    return @fish.count
  end

end
