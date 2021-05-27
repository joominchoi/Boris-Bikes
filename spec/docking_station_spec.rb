require "docking_station"

# describe DockingStation do
#   it "DockingStation responds to release_bike" do
#     expect(DockingStation).to respond_to :release_bike 
#   end
# end

# one-liner syntax
describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it {is_expected.to respond_to(:dock_bike).with(1).argument}
  # first, let's update our test for #dock
  it "docks working bikes" do
    # dock = subject.dock_bike
    # expect(dock).to be_working
    bike = Bike.new
    # we want to return the bike we dock
    expect(subject.dock_bike(bike)).to eq bike
  end

  it {is_expected.to respond_to :bike}

  # let's update our test for #bike
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock_bike(bike)
    # Again, we need to return the bike we just docked
    expect(subject.bike).to eq bike
  end

end


