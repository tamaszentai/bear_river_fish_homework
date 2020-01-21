class Bears

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end


 def take_fish_from_river(fish)
   @fish.delete(fish)
 end


end
