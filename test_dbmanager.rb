require 'minitest/autorun'
require 'test/unit'
require './dbmanager.rb'

#class TC_LibClient < Test::Unit::TestCase
class TC_LibClient < Test::Unit::TestCase
  def setup
    @db_manipulator = Vmdomain.new
  end
  def test_updatetime
		 assert_equals(Vmdomain.get_last_connection("win7-001","2014-12-28 14:04:56"))
  end
end
