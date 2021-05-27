require "docking_station.rb"

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

  it {is_expected.to respond_to :dock_bike.with(1).argument}

  it "docks working bikes" do
    # dock = subject.dock_bike
    # expect(dock).to be_working
  end

end


