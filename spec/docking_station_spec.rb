# require 'docking_station'
# describe 'DockingStation' do
#   it { should respond_to()}
#     #it 'responds to the method "release_bike"' do
#      #   expect(subject).to respond_to(:release_bike)

#     #it 'release_bike' do
#     it 'releases working bikes' do
#       # bike = DockingStation.release_bike
#         expect(subject.rel).to be_working
#     end
# end

require 'docking_station'

describe DockingStation do
    describe '#release_bike' do
            it 'release a bike' do
              bike = Bike.new
            subject.dock(bike)
          expect(subject.release_bike).to eq bike
        end
        it 'raises an error when there are no bikes available' do
            expect { subject.release_bike }.to raise_error ('No bikes available')
      end

 
     # it 'releases working bikes' do
     #     bike = subject.release_bike
     #    expect(bike).to be_working
     # end
  end
  
  
  
  describe '#dock'do
      #it 'dock a bike' do
      
      it 'raises an error if capacity full' do
          subject.dock(Bike.new)
       expect {subject.dock(Bike.new)}.to raise_error ('Bike capacity full')
   end
  end
      
      #--------------------------------------
      
           it 'responds to the method "release_bike"' do
           expect(subject).to respond_to(:release_bike)
      end 
      
      it 'dock does something' do
          is_expected.to respond_to(:dock).with(1).argument 
      end
  
      it 'responds to bike' do
          is_expected.to respond_to(:bike) 
      end
      
      it { 
          bike = Bike.new 
      expect(subject.dock(bike)).to eq bike
          
      }
      
      it 'returns docked bikes' do
          bike = Bike.new
          subject.dock(bike)
          expect(subject.bike).to eq bike
      end
      

      
  #    it 'returns fail' do
  #    expect {bike_available?}.to raise_error("oops")
  #end
      

end