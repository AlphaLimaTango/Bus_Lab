class Bus
  attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def return_route_number
    return @route_number
  end

  def return_destination
    return @destination
  end

  def drive
    return "Brum brum!"
  end

  def passenger_count
    @passengers.count
  end

  def add_passenger(person)
    @passengers << person
  end

  def drop_off_passenger(person)
    @passengers.delete(person)
  end

  def is_passenger_on_there(person)
    @passengers.include?(person)
  end

  def kick_out_passengers
    @passengers.clear
  end
end
