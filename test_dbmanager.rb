require 'minitest/autorun'
require 'test/unit'
require './dbmanager.rb'

#class TC_LibClient < Test::Unit::TestCase
class TC_LibClient < Test::Unit::TestCase
  def setup
    @db_manipulator = Vmdomain.new
  end
  def test_updatetime
		 assert_equals(Vmdomain.checkDomain("157.1.138.10"),["Domain-0"])
  end
end
