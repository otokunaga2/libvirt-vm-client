# coding:utf-8
require 'active_record'
#require 'sqllite3'
#
ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection('development')
#

#class Student < ActiveRecord::Base
#end

class Vmdomain < ActiveRecord::Base
end
# idが「1234567890」の学生だけ抽出しオブジェクトに格納します．
student = Vmdomain.find('win7-001')
vminstance = Vmdomain.new(:id => 'win7-003', :date => Date.new)
if vminstance.save
				puts "success"
else
				puts "failed"
end
#
#class VMDomain < ActiveRecord::Base
#end
##
## # idが「1234567890」の学生だけ抽出しオブジェクトに格納します．
#vmdomain = VMDomain.find('wnd7-001')
#puts vmdomain.vmname
