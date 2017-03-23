class Airplane

  attr_reader :type, :wingloading, :horsepower

  def initialize(type, wingloading, horsepower)
    @type = type
    @wingloading = wingloading
    @horsepower = horsepower
    @engine = 0
  end

  def start
    if @engine <= 0
      @engine += 1
      @start = "engine started"
    else @engine >= 1
      @start = "engine is already running"
    end
  end

  def takeoff
    if @engine <= 0
      @takeoff = "The engine is not turned on. Please start the engine and retry."
    else
      @engine += 1
      @takeoff = "Alright, here we go!"
    end
  end

  def land
    if @engine <= 0
      @land = "The engine is not turned on. Please start the engine and retry."
    elsif @engine == 1
      @land = "We haven't taken off yet, we're still on the ground!"
    else
      @land = "Please return your trays to their upright and locked position, the plane will be landing soon."
    end
  end

end
