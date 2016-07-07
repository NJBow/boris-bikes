require_relative 'bike'

class DockingStation

attr_reader :bikes

 def bike
     
     @bikes
     
 end
    
    def initialize
        
       @bikes = []
       
    end
        
 
    def release_bike
        
        fail 'No bikes available' if empty?
        @bikes.pop
        
    end

    # def dock(bike)
        
    #     fail 'Bike capacity full' if @bikes.count >= 20 
    #     @bikes << bike
        
    # end
    



  def dock(bike)
      
         fail 'Bike capacity full' if full?    
        @bikes << bike
    
end
    
    private
    
    def full?
        @bikes.count >= 20
    end
    
    def empty?
    @bikes.empty?
    end
    
end