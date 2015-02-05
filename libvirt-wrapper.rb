require 'libvirt'
require './dbmanager.rb'
require 'parallel'
#require './target_list.txt'
class LibClient
  attr_accessor :hold_vm_list, :idle_vm_list, :running_vm_list, :vmhash
		STOP = 3
		IDLE = 2
		RUNNING = 1 
	def initialize
    @vmconnect=nil
    @targetlist=[]
    @running_vm_list=[]
		@hold_vm_list=[]
		@idle_vm_list=[]
    iplist = ["157.1.138.7","157.1.138.8"]
		@vmhash = Hash.new
		iplist.each do |ipname|
      begin
			  puts ipname
        @vmhash[ipname] = Libvirt::open("xen+tcp://" << ipname)
      rescue=> e
        raise "#{e},connection does not open check the virsh is alive"
      end
		 end
  end

  def compareVMList
    #@vm_detail_list=[] => unused
    @vmconnect.list_domains.each do |domid|
      dom = @vmconnect.lookup_domain_by_id(domid)
	  	temp_vm_domain = get_specific_domain(dom.name)
	  	if temp_vm_domain.info.state == RUNNING
	  	 @running_vm_list.push(dom.name)
	  	elsif temp_vm_domain.info.state == IDLE # 			@idle_vm_list.push(dom.name)
	  	elsif temp_vm_domain.info.state == STOP
	  	  @hold_vm_list.push(dom.name)
	  	end
    end
	end
  #should stand up the vm
  def compareVMListFromTargetlist #  p File.absolute_path("..")
  #
    begin
		  prefix = @current_ipadress.to_s.gsub(".","")
		  filename = "./vmtarget/targetlist.txt"
      f = File.open(filename,"r")
      rescue => e
      raise "#{e},File not found exeption" 
    end
		instance = Vmdomain.all
		instance.each do |element|
			@targetlist.push(element.id)	
		end
  
    @targetlist.each_with_index{ |vm,i|
    @running_vm_list.each do |existvm|
      if(vm.to_s == existvm.to_s)
        @targetlist.delete_at(i) end end }
    return @targetlist
  end
  def create_domain_xml(input_xml)
    
  end

  def start(target_vm)
		 target_vm =get_specific_domain(target_vm)		
   	 target_vm.start #create means the starting the vm domain 
  end
  def get_domain_info(vm)
    temp_domain = get_specific_domain(vm)
    temp_domain.info.state
    #if state == STOP
    #  return "STOP"
    #elsif state == LIVE
    #  return "LIVE"
    #else
  end
  def getVMList
    return @running_vm_list
  end
  #file reading
  def create_domain_xml(new_dom_xml)
    #よりょくがあれば、このxmlファイルを動的に変更できるようにする
    begin
      dom = @vmconnect.create_domain_xml(new_dom_xml)
    rescue Libvirt::Error 
      p "libvirt error"
      return -1
    end
    begin
    dom.create    
    rescue 
    end

  end

  def suspend(target_vm) 
    tempvm = get_specific_domain(target_vm) 
		begin
      tempvm.suspend #@vmconnect.list_domains.each do |domid|
		rescue => e
			puts e
			raise e end
  end

  def destroy(target_vm) 
    tempvm = get_specific_domain(target_vm) 
		begin
      tempvm.destroy #@vmconnect.list_domains.each do |domid|
		rescue NoMethodError => e
			p e
			raise e
		end
  end
	def resume( target_vm )
		tempvm = get_specific_domain( target_vm )
		if ( tempvm != nil )
		  begin
		    tempvm.resume
		  rescue => e
		  	puts "resume #{e}"
		  end
    end
	end
  def get_specific_domain( domain_name )
    @vmconnect.list_domains.each do |domid|
      @dom = @vmconnect.lookup_domain_by_id(domid)
			 if @dom 
        if ( domain_name == @dom.name )
          return @dom
        end
			end
    end
    return nil
  end
  #suspendしていたvmを上げる
  def reboot(target_vm)
    tempvm = get_specific_domain(target_vm)
		begin
    	tempvm.reboot
		rescue NoMethodError=> e
			raise e
		end
  end
end

tmp =  LibClient.new
p tmp.vmhash
