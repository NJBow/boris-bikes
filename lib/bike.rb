class Bike
    
    def initialize
        @working = true
    end
    
    def report_broken
        @working = false
    end 
    
    def working?
        @working
    end
    
end
    
    
    
    
    
    
    
    
    
    
#     attr_accessor :broken, :fine
    
#     def working?
#       @fine = true
#     end
    
#     def report_broken
#         @broken = true
#     end
    
#     def broken?
#         @broken
#     end
# end