require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class TestBusStop < MiniTest::Test
  def setup
    @bus_stop1 = BusStop.new("Sighthill")
    @passenger1 = Person.new("Pim", 22)
  end

  def test_add_to_queue
    @bus_stop1.add_to_queue(@passenger1)
    assert_equal(1, @bus_stop1.count_queue)
  end


end
