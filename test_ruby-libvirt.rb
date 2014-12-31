require 'test/unit'
require './libvirt-wrapper.rb'

class TC_LibClient < Test::Unit::TestCase
  def setup
    @test_lib_client = LibClient.new

  end
  def test_reboot
    assert_equals("win7-001",@test_lib_client.getSpecificDomain("win7-001").name)
  end
  def test_getSpecificDomain
    assert_equals("error",2)
  end


end
