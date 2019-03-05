require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class TestBus < MiniTest::Test

  def setup
    @bus1 = Bus.new(22, "Ocean Terminal")
    @new_passenger = Person.new("Jon", 41)
  end

  def test_return_route_number
    assert_equal(22, @bus1.return_route_number)
  end

  def test_return_destination
    assert_equal("Ocean Terminal", @bus1.return_destination)
  end

  def test_drive
    assert_equal("Brum brum!", @bus1.drive)
  end

  def test_passenger_count
    assert_equal(0, @bus1.passenger_count)
  end

  def test_add_passenger
    @bus1.add_passenger(@new_passenger)
    assert_equal(1, @bus1.passenger_count)
  end

  def test_drop_off
    @bus1.drop_off_passenger(@new_passenger)
    assert_equal(false, @bus1.is_passenger_on_there(@new_passenger))
  end

  def test_empty_bus
    @bus1.kick_out_passengers
    assert_equal(0, @bus1.passenger_count)
  end
end
