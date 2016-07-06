require_relative 'bike.rb'

class DockingStation
    #def initalize(bikes)
     #  
     #   bikes = 0
     #   @bikes = bikes
        attr_reader :bike
        
    
    def release_bike
        fail 'No bikes available' unless @bike
        @bike
    end

    def dock(bike)
        fail 'Bike capacity full' if @bike
        @bike=bike
    end
    
    def bike
       @bike
    end
end