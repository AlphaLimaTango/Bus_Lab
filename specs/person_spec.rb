require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class TestPerson < MiniTest::Test

  def setup
    @person1 = Person.new("Amy", 28)
  end

  def test_get_name
    assert_equal("Amy", @person1.name)
  end

  def test_get_age
    assert_equal(28, @person1.age)
  end

end
