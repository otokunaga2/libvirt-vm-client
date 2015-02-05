require 'test/unit'
require './libvirt-wrapper'

class TestSample < Test::Unit::TestCase
  class << self
	  # exec before test
		def startup
		end
		
		def shutdown
		end
	end
		def setup
		  p :setup
		end
		def teardonw

		end
		def test_foo
			assert_equal(1,1)
		end
		def test_bar
		  p 'test_bar'
			assert_equal(1,1)
		end
		end
