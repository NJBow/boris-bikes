# Boris Bikes #

Boris Bikes are public bicycles available for rent at designated stations across London for up to 24 hour periods.

```Boris Bikes```


--------------Testing Area-------------------

**Step 1.README.md**

**Step 2.User Story into a Domain Model:**


|Objects        | Messages          |
|---------------|:-----------------:|
|Person         |                   |
|Bike           |working?           |
|DockingStation |release_bike       |



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











