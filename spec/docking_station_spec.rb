require 'docking_station'

describe DockingStation do
  
  it 'gives default capacity (DEFAULT_CAPACITY)' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end




 describe 'initialization'
 subject { DockingStation.new}
 let(:bike) {Bike.new}
 it 'defaults capacity to given variable' do
   described_class::DEFAULT_CAPACITY.times do
     subject.dock(bike)
   end
   expect{subject.dock(bike)}.to raise_error 'Docking station full'
 end

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises and error when no bikes are available' do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end
    
  it 'all bikes are working' do
    # bikes = Bike.new
    20.times{subject.dock(Bike.new)}
    # bikes = subject.release_bike
    expect(subject.release_bike).to_not be_broken
  end
  
  # it 'Doesn\'t release a broken bike' do
  #   broken_bike = Bike.new.report_broken
  #   subject.dock(broken_bike)
  #   expect(subject.release_bike).to raise_error 'bike broken'
  # end
  
  it 'chooses a working bike' do
  fred = Bike.new
  subject.dock(fred)
  19.times{subject.dock(Bike.new.report_broken)}
  expect(subject.release_bike).to eq fred
end
  

  





  end

  describe '#dock' do

    it 'raises an error if capacity is full' do
       described_class::DEFAULT_CAPACITY.times {subject.dock (Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error('Docking station full')
    end

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end




  end
end
