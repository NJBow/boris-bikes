require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def working_bikes?
    fail 'Sorry there are not working bike availible' if @bikes.all? {broken?}
  end

  def release_bike
    fail 'No bikes available' if empty? || if bike.broken?
    @bikes.select {|bike|}
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end