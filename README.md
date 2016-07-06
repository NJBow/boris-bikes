# Boris Bikes #

Boris Bikes are public bicycles available for rent at designated stations across London for up to 24 hour periods.

```Boris Bikes```


--------------Testing Area-------------------

**Step 1.README.md**

**Step 2.User Story into a Domain Model:**


|Objects        | Messages                    |
|---------------|:---------------------------------------------------:|
|**Question**|   **1**                                          |
|Person         |                                             |
|Bike           |working?                                             |
|DockingStation |release_bike                                         |
|**Question**   | **11**                   |
|Person         |                                           |
|DockingStation |dock_bike                                            |
|DockingStation |bike_docked?                                         |
| **Question**|    **12**                                         |
|Person         |                                           |
|DockingStation | bike_available? (-Didn't use this **Brainstorming**)|           
|   **Question**  | **13**                    |
|Maintainer     |                   |
|DockingStation | bike_capacity (-Didn't use this **Brainstorming**)              |
| **Question**|**14**|
|Maintainer||
|DockingStation|default_cap (Didn'tuse this **Brainstorming**)|

```Communication Diagram```

```Primary Object``` → ```Reference Object``` → ```Message```

```Person``` → ```Bike``` → ```docking_station_with_bike```  (AND) ```find_working_bike```

**Step 3.Feature Test a feature:**

```Define 'Feature Test'``` 

Feature Testing, changes to new functionality or significantly modifies functionality. Mapping function of a variable to a new object

```Define 'stack trace'```

stack trace provides map of functionality

**Step 4. Errors are good:**

```ERROR MESSAGE```

2.3.0 :001 > docking_station = DockingStation
NameError: uninitialized constant DockingStation
        from (irb):1
        from /usr/local/rvm/rubies/ruby-2.3.0/bin/irb:11:in `<main>'


```ERROR TYPE```

error is NameError, caused by; uninitialized constant DockingStation

```ERROR FILE PATH```

File path error is:  from /usr/local/rvm/rubies/ruby-2.3.0/bin/irb

```ERROR LINE NUMBER```

error occuring in the irb file on line 11

```ERROR MEANING```

uninitialized constant DockingStation == Referred to a class or module that doesn't exist.

```ERROR SOLUTION```

Make DockingStation a Class or Module in a file located within current directory.

**Step 5.Rspec**

Require, describe, spec and ruby files created.

**Step 6. Rspec**

Rspec running and passing, no error.

**Step 7. use of feature.md**

release_bike will return NoNameError due to no release_bike method within DockingStation class (Object's message is not called)

**Step 8. Passing Rspec test**

Rspec docking_station_spec.rb testing for release_bike method within DockingStation class.

release_bike method with action made.

**Step 9. bike method**

```
class DockingStation
    class Bike
         def working?
             puts "Working"
         end
     end
    def release_bike
     bike = Bike.new
     bike.working?
    end
end
```

Use of class heirachy allows for single file usage

Whilst in irb; instantiating docking_station file to DockingStation class allows for 'working?' method within Bike class to be called

Creating multiple files of docking_station.rb and bike.rb allows for simplicity and easier access

**Step 10 + 11.Dock get bike**
```
require 'docking_station'

describe DockingStation do

  it 'responds to the method "release_bike"' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
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
end
```

Added Rspec's to test for the method working, liined p arguments with each method to see if it is passing.

**General Rspec layout**
```
it 'a message describing the test' do
expect(the method).to eq the argument output
end
```

**Step 12. Raising exceptions**

```
   describe '#release_bike' do
            it 'release a bike' do
              bike = Bike.new
            subject.dock(bike)
          expect(subject.release_bike).to eq bike
        end
        it 'raises an error when there are no bikes available' do
            expect { subject.release_bike }.to raise_error ('No bikes available')
      end

      it 'responds to the method "release_bike"' do
           expect(subject).to respond_to(:release_bike)
      end 
     # it 
     
 ```
Fail parameters for Rspec required within Method. Method parameter for above Rspec shown below:

```
  def release_bike
        fail 'No bikes available' unless @bike
        @bike
    end
    
 ```
 
 **Step 13. Limiting capacity**
 
 Bike capacity created through dock method as shown in Rspec file:


``` 
 describe '#dock'do
      #it 'dock a bike' do
      
      it 'raises an error if capacity full' do
          subject.dock(Bike.new)
       expect {subject.dock(Bike.new)}.to raise_error ('Bike capacity full')
   end
  end
 ```
 
 Here is the Method in the ruby file:
 
 ```
     def dock(bike)
        fail 'Bike capacity full' if @bike
        @bike=bike
    end
```

**Step 14. Complex Attributes**

added a capacity of 20 to docking_station, allows for Rspc to run 20 bikes(objects) into the class.
By filling the capacity then running a final object into the 'limitted' array we can fail the Rspec test as this is over the capacity

code as follows:

```
    it 'raises an error if capacity is full' do
      20.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error("Bike capacity full")
    end
```

and the method within the ruby file:

```
    def release_bike
        fail 'No bikes available' if @bikes.empty?
        @bikes.pop
    end

    def dock(bike)
        fail 'Bike capacity full' if @bikes.count >= 20 
        @bikes << bike
    end
```

 





