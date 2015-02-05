require 'libvirt'
require './dbmanager.rb'
#require './target_list.txt'
class LibClient
  attr_accessor :hold_vm_list, :idle_vm_list, :running_vm_list
		STOP = 3
		IDLE = 2
		RUNNING = 1
  def initialize()
    @con=nil
    @targetlist=[]
    @running_vm_list=[]
		@hold_vm_list=[]
		@idle_vm_list=[]
		p "here"
    begin
      @con = Libvirt::open("xen+tcp://157.1.138.5")
    rescue=> e
      raise "#{e},connection does not open check the virsh is alive"
    end
		p "end"
    @running_vm_list=[]
    @vm_alive_list=[]
    #@vm_detail_list=[] => unused
    unless @con == nil
      @con.list_domains.each do |domid|
        dom = @con.lookup_domain_by_id(domid)
				temp_vm_domain = get_specific_domain(dom.name)
				if temp_vm_domain.info.state == RUNNING
				 @running_vm_list.push(dom.name)
				elsif temp_vm_domain.info.state == IDLE
					@idle_vm_list.push(dom.name)
				elsif temp_vm_domain.info.state == STOP
				  @hold_vm_list.push(dom.name)
				end
      end
    end
  end
end


tmp = LibClient.new()
p tmp.vm_alive_list
