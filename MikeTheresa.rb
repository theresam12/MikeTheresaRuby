class Vehicle

  def initialize (year = "")
    @year = year
  end

  def year build_year
    @year = build_year
  end

  def get_year
    @year
  end

end

class Boat < Vehicle
  def initialize
    super
    @engines = 2
    @horn = "default noise"
  end

  def info
    @engines
    @horn
  end

  def engines
    @engines
  end

  def horn
    @horn
  end

  def customize_horn horn_noise
    @horn = horn_noise
  end

end

class Yacht < Boat
  def initialize
    super
    @horn = "BOOOOOOOOOAAWWWW"
  end
end

class Sailboat < Boat
  def initialize
    super
    @horn = "Jingle Bells"
  end
end

class Pontoon < Boat
  def initialize
    super
    @horn= "BOOOOZEEEE-- BOOOO BOOO"
  end
end

class Harbor

  def initialize
    @boat_list = []
  end

  def add_boat boat, *others
    @boat_list.push(boat)
    @boat_list.push(*others)
  end

  def list_boats
    @boat_list
  end

  def sort_by_year
    @boat_list = @boat_list.sort_by {|a| a.get_year }
  end

end
