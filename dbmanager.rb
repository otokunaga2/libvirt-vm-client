# coding:utf-8
require 'active_record'
#
config = ActiveRecord::Base.configurations = YAML.load_file('./database.yml')
ActiveRecord::Base.establish_connection(config["db"]["development"])
#

#class Student < ActiveRecord::Base
#end

class Vmtarget < ActiveRecord::Base
#	def save(id,date)
#		self.create(:id=>id, :date=>date)
#	end
#  def get_all_domain
#		self.all
#	end
  class << self
	#  def register_domain(domain_name)
	#  	temp_domain = self.new(:id=>domain_name)
	#		return temp_domain.save
	#	end
		def getTargetList
			self.pluck()
		end
		def getAllIpaddr
		   self.select(:ipaddr).distinct.pluck(:ipaddr)
		end
		def checkDomain(ipaddr)
		   self.where(:ipaddr => ipaddr).pluck(:vmname)
		end
	#	def update_suspend_time(domain_name)
	#  	target_domain = self.where(:id=>domain_name).first
	#		puts target_domain
	#		#target_domain[:date] = "test"
	#	#	target_domain.date = Time.now.strftime("%Y-%m-%d %H:%m:%s")
	#	  if target_domain
	#			puts "update susupend_time called"
	#			target_domain[:date] = Time.now.strftime("%Y-%m-%d %H:%M:%S")
	#			target_domain.save
	#		else
	#			target_domain = self.new(:id=>domain_name,:date=>Time.now.strftime("%Y-%m-%d %H:%M:%S"))
	#			if target_domain.save
	#			end
	#		end
	#	end
	end
end
