require_relative 'bike'

class DockingStation
    
DEFAULT_CAPACITY = 20

attr_accessor :capacity, :bikes
    
    def initialize(capacity=DEFAULT_CAPACITY)
        
       @bikes = []
       @capacity = capacity
    end
        
  def dock(bike)
      
         fail 'Docking station full' if full?    
        @bikes << bike
  end
    
 
    def release_bike
      
        fail 'No bikes available' if empty? || @bikes.each == false
        @bikes.pop
        
    end
    
    def check_bikes
        fail 'Bike is broken' if @bikes.each == false
        @bikes
    end

    
    private

    def full?
        bikes.count >= capacity
    end
    
    def empty?
    bikes.empty?
    end
    
end