require "docking_station"

describe DockingStation do

  describe "#release_bike" do
    it "raises an error when there are no bikes available" do
      expect {subject.release_bike}.to raise_error "No bikes available"
    end
  end
    
    it "release a bike" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end


  it {is_expected.to respond_to(:dock_bike).with(1).argument}
  
  it "docks working bikes" do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it {is_expected.to respond_to :bike}

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end

end


