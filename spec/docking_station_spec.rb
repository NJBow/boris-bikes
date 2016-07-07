require 'docking_station'

describe DockingStation do

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises and error when no bikes are available' do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end

  it 'responds to the method "release_bike"' do
    expect(subject).to respond_to(:release_bike)
  end

  end

  describe '#dock' do

    it 'raises an error if capacity is full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
      # 20.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error("Bike capacity full")
    end

    it 'Dock takes and argument' do
      is_expected.to respond_to(:dock).with(1).argument
    end

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  end


  it 'responds to bike' do
    expect(subject).to respond_to(:bikes)
  end

end