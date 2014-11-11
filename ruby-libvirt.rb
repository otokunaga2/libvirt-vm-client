require 'libvirt'
#require './target_list.txt'
class LibClient
  STOP = 3
  START = 1
  def initialize()
    @con=nil
    @targetlist=[]
    @vmlist=[]
    #set up the specific ip address 
    begin
      @con = Libvirt::open("xen+tcp://192.168.0.251")
    rescue=> e
      raise "#{e},connection does not open check the virsh is alive"
    end
    @vmlist=[]
    @vm_alive_list=[]
    #@vm_detail_list=[] => unused
    unless @con == nil
      @con.list_domains.each do |domid|
        dom = @con.lookup_domain_by_id(domid)
        if dom.state != 3 #dom.state == 3 which means suspend
          @vmlist.push(dom.name)
        end
      end
    end
  end

  def getDomainsList
     return @vmlist
     #return @vm_detail_list
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
  def create_domain_xml(input_xml)
    
  end
  def addVMlist(vmname)
   @vmlist.push(vmname)
  end

  def start(target_vm)
    
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
    return @vmlist
  end
  #file reading
  def create_domain_xml(new_dom_xml)
    #よりょくがあれば、このxmlファイルを動的に変更できるようにする
    begin
      dom = @con.create_domain_xml(new_dom_xml)
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
    tempvm.suspend #@con.list_domains.each do |domid|
  end
  def get_specific_domain(domain_name)
    @con.list_domains.each do |domid|
      @dom = @con.lookup_domain_by_id(domid)
      if(domain_name.to_s == @dom.name)
        return @dom
      end
    end
  end
#suspendしていたvmを上げる
  def reboot(target_vm)
    tempvm = get_specific_domain(target_vm)
    tempvm.reboot
  end
end



temp = LibClient.new
p temp.getDomainsList
p temp.get_domain_info("Domain-0")
temp.suspend("win7-003")
UUID = '93a5c045-6457-2c09-e5ff-927cdf34e17b'
GUEST_DISK = '/var/lib/libvirt/images/example.qcow2'
new_dom_xml = <<EOF
<domain type='kvm'>
<name>ruby-libvirt-tester</name>
<uuid>#{UUID}</uuid>
<memory>1048576</memory>
<currentMemory>1048576</currentMemory>
<vcpu>1</vcpu>
<os>
<type arch='x86_64'>hvm</type>
<boot dev='hd'/>
</os>
<features>
<acpi/>
<apic/>
<pae/>
</features>
<clock offset='utc'/>
<on_poweroff>destroy</on_poweroff>
<on_reboot>restart</on_reboot>
<on_crash>restart</on_crash>
<devices>
<disk type='file' device='disk'>
<driver name='qemu' type='qcow2'/>
<source file='#{GUEST_DISK}'/>
<target dev='vda' bus='virtio'/>
</disk>
<interface type='bridge'>
<mac address='52:54:01:60:3c:95'/>
<source bridge='virbr0'/>
<model type='virtio'/>
<target dev='rl556'/>
</interface>
<serial type='pty'>
<target port='0'/>
</serial>
<console type='pty'>
<target port='0'/>
</console>
<input type='mouse' bus='ps2'/>
<graphics type='vnc' port='-1' autoport='yes' keymap='en-us'/>
<video>
<model type='cirrus' vram='9216' heads='1'/>
</video>
</devices>
</domain>
EOF
#temp.suspend("win7-001")
#temp.create_domain_xml(new_dom_xml)

#p temp.instance_variable_get('@vm_detail_list')
