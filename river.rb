require_relative("fish")

class River

  attr_reader :name, :fish
  def initialize(name, fish_number)
    @name = name
    @fish = []
    populate_river(fish_number)
  end

  def populate_river(number_of_fish)
    potential_names = ["Flounder", "Flotsam", "Jetsam", "Bee", "Bo", "Hermintrude"]
    number_of_fish.times do |x|
      name = potential_names[rand(0..6)]
      @fish.push(Fish.new(name))
    end
  end

  def remove_fish()
    @fish.pop()
  end

  def count_fish()
    return @fish.count
  end



end
