require_relative "bike"

# in docking_station.rb
class DockingStation
  # this will essentially write the method on any instances of this class
  # # def bike
  # #   @bike
  # # end
  attr_reader :bike
  
  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    # we need to return the bike we dock
    @bike = bike
  end

  

end