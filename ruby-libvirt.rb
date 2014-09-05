require 'libvirt'
#require './target_list.txt'
class LibClient
  def initialize()
    @con=nil
    @targetlist=[]
    @vmlist=[]
    #set up the specific ip address 
    @con = Libvirt::open("xen+tcp://192.168.0.251")
    @vmlist=[]
    @con.list_domains.each do |domid|
      dom = @con.lookup_domain_by_id(domid)
      puts " Domain #{dom.name}"
      @vmlist.push(dom.name)
    end
  end
  
  #should stand up the vm
  def compareVMList #  p File.absolute_path("..")
  #
    begin
      f = File.open("targetlist.txt","r")
    rescue => e
      raise "#{e},File not found exeption" 
    end
    f.each do |vmname|
      @targetlist.push(vmname.chomp)
      p vmname
    end
    p @targetlist
  
    @targetlist.each_with_index{ |vm,i|
    @vmlist.each do |existvm|
      if(vm.to_s == existvm.to_s)
        @targetlist.delete_at(i)
      end
    end
    }
    return @targetlist
  end

  def addVMlist(vmname)
   @vmlist.push(vmname)
  end

  def getVMList
    return @vmlist
  end
  #file reading
  def createVM
    #よりょくがあれば、このxmlファイルを動的に変更できるようにする
    dom = @con.create_domain_xml(new_dom_xml)
    dom.create    
  end
  def rebootVM
   
  end

  def suspend(suspend_target_vm)
    @vm = getSpecificDomain(target_vm)
    p @vm.name
    @vm.suspend
    #@con.list_domains.each do |domid|
  end
  def getSpecificDomain(domain_name)
    @con.list_domains.each do |domid|
      @dom = @con.lookup_domain_by_id(domid)
      if(domain_name.to_s == @dom.name)
        return @dom
      end
    end
  end
#suspendしていたvmを上げる
  def resume(target_vm)
    @vm = getSpecificDomain(target_vm)
    p @vm.name
    @vm.resume
  end
end


#c.reboot("win7-001")
#c.getVMList

