class River

  attr_reader :name
  attr_writer :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def count_fish
    return @fish.count()
  end

  def adding_fish(fish)
   @fish.push(fish)
 end

 


end
