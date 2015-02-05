#ifndef EXTCONF_H
#define EXTCONF_H
#define HAVE_TYPE_VIRNETWORKPTR 1
#define HAVE_TYPE_VIRSTORAGEPOOLPTR 1
#define HAVE_TYPE_VIRSTORAGEVOLPTR 1
#define HAVE_TYPE_VIRSECRETPTR 1
#define HAVE_TYPE_VIRNWFILTERPTR 1
#define HAVE_TYPE_VIRINTERFACEPTR 1
#define HAVE_TYPE_VIRDOMAINBLOCKINFOPTR 1
#define HAVE_TYPE_VIRDOMAINMEMORYSTATPTR 1
#define HAVE_TYPE_VIRDOMAINSNAPSHOTPTR 1
#define HAVE_TYPE_VIRDOMAINJOBINFOPTR 1
#define HAVE_TYPE_VIRNODEDEVICEPTR 1
#define HAVE_TYPE_VIRSTREAMPTR 1
#define HAVE_TYPE_VIRTYPEDPARAMETERPTR 1
#define HAVE_TYPE_VIRDOMAINBLOCKJOBINFOPTR 1
#define HAVE_VIRSTORAGEVOLWIPE 1
#define HAVE_VIRSTORAGEPOOLISACTIVE 1
#define HAVE_VIRSTORAGEPOOLISPERSISTENT 1
#define HAVE_VIRSTORAGEVOLCREATEXMLFROM 1
#define HAVE_VIRCONNECTGETLIBVERSION 1
#define HAVE_VIRCONNECTISENCRYPTED 1
#define HAVE_VIRCONNECTISSECURE 1
#define HAVE_VIRNETWORKISACTIVE 1
#define HAVE_VIRNETWORKISPERSISTENT 1
#define HAVE_VIRNODEDEVICECREATEXML 1
#define HAVE_VIRNODEDEVICEDESTROY 1
#define HAVE_VIRINTERFACEISACTIVE 1
#define HAVE_VIRDOMAINMIGRATETOURI 1
#define HAVE_VIRDOMAINMIGRATESETMAXDOWNTIME 1
#define HAVE_VIRDOMAINMANAGEDSAVE 1
#define HAVE_VIRDOMAINISACTIVE 1
#define HAVE_VIRDOMAINISPERSISTENT 1
#define HAVE_VIRCONNECTDOMAINXMLFROMNATIVE 1
#define HAVE_VIRCONNECTDOMAINXMLTONATIVE 1
#define HAVE_VIRDOMAINCREATEWITHFLAGS 1
#define HAVE_VIRDOMAINATTACHDEVICEFLAGS 1
#define HAVE_VIRDOMAINDETACHDEVICEFLAGS 1
#define HAVE_VIRDOMAINUPDATEDEVICEFLAGS 1
#define HAVE_VIRNODEGETSECURITYMODEL 1
#define HAVE_VIRDOMAINCREATEXML 1
#define HAVE_VIRDOMAINGETSECURITYLABEL 1
#define HAVE_VIRCONNECTCOMPARECPU 1
#define HAVE_VIRCONNECTBASELINECPU 1
#define HAVE_VIRDOMAINSETVCPUSFLAGS 1
#define HAVE_VIRDOMAINGETVCPUSFLAGS 1
#define HAVE_VIRCONNECTDOMAINEVENTREGISTERANY 1
#define HAVE_VIRCONNECTDOMAINEVENTREGISTER 1
#define HAVE_VIRDOMAINBLOCKPEEK 1
#define HAVE_VIRDOMAINMEMORYPEEK 1
#define HAVE_VIRCONNECTOPENAUTH 1
#define HAVE_VIREVENTREGISTERIMPL 1
#define HAVE_VIRDOMAINISUPDATED 1
#define HAVE_VIRDOMAINSETMEMORYPARAMETERS 1
#define HAVE_VIRCONNECTGETSYSINFO 1
#define HAVE_VIRDOMAINSETBLKIOPARAMETERS 1
#define HAVE_VIRDOMAINSETMEMORYFLAGS 1
#define HAVE_VIRDOMAINGETSTATE 1
#define HAVE_VIRDOMAINOPENCONSOLE 1
#define HAVE_VIRDOMAINMIGRATE2 1
#define HAVE_VIRDOMAINSCREENSHOT 1
#define HAVE_VIRINTERFACECHANGEBEGIN 1
#define HAVE_VIRSTORAGEVOLDOWNLOAD 1
#define HAVE_VIRDOMAININJECTNMI 1
#define HAVE_VIRDOMAINGETCONTROLINFO 1
#define HAVE_VIRDOMAINMIGRATEGETMAXSPEED 1
#define HAVE_VIRNODEGETCPUSTATS 1
#define HAVE_VIRNODEGETMEMORYSTATS 1
#define HAVE_VIRDOMAINDESTROYFLAGS 1
#define HAVE_VIRDOMAINSAVEFLAGS 1
#define HAVE_VIRDOMAINSAVEIMAGEGETXMLDESC 1
#define HAVE_VIRDOMAINSENDKEY 1
#define HAVE_VIRNETWORKUPDATE 1
#define HAVE_VIRNODESUSPENDFORDURATION 1
#define HAVE_VIRNODEGETMEMORYPARAMETERS 1
#define HAVE_VIRNODEGETCPUMAP 1
#define HAVE_VIRDOMAINUNDEFINEFLAGS 1
#define HAVE_VIRDOMAINPINVCPUFLAGS 1
#define HAVE_VIRDOMAINGETVCPUPININFO 1
#define HAVE_VIRDOMAINSNAPSHOTGETNAME 1
#define HAVE_VIRCONNECTSETKEEPALIVE 1
#define HAVE_VIRDOMAINRESET 1
#define HAVE_VIRDOMAINSHUTDOWNFLAGS 1
#define HAVE_VIRDOMAINGETHOSTNAME 1
#define HAVE_VIRDOMAINGETMETADATA 1
#define HAVE_VIRDOMAINSETMETADATA 1
#define HAVE_VIRCONNECTLISTALLDOMAINS 1
#define HAVE_VIRCONNECTLISTALLNETWORKS 1
#define HAVE_VIRCONNECTLISTALLINTERFACES 1
#define HAVE_VIRCONNECTLISTALLSECRETS 1
#define HAVE_VIRCONNECTLISTALLNODEDEVICES 1
#define HAVE_VIRCONNECTLISTALLSTORAGEPOOLS 1
#define HAVE_VIRCONNECTLISTALLNWFILTERS 1
#define HAVE_VIRCONNECTISALIVE 1
#define HAVE_VIRNODEDEVICEDETACHFLAGS 1
#define HAVE_VIRDOMAINSENDPROCESSSIGNAL 1
#define HAVE_VIRDOMAINLISTALLSNAPSHOTS 1
#define HAVE_VIRDOMAINSNAPSHOTNUMCHILDREN 1
#define HAVE_VIRDOMAINSNAPSHOTLISTCHILDRENNAMES 1
#define HAVE_VIRDOMAINSNAPSHOTLISTALLCHILDREN 1
#define HAVE_VIRDOMAINSNAPSHOTGETPARENT 1
#define HAVE_VIRDOMAINSNAPSHOTISCURRENT 1
#define HAVE_VIRDOMAINSNAPSHOTHASMETADATA 1
#define HAVE_VIRDOMAINSETMEMORYSTATSPERIOD 1
#define HAVE_VIRDOMAINFSTRIM 1
#define HAVE_VIRDOMAINBLOCKREBASE 1
#define HAVE_VIRDOMAINOPENCHANNEL 1
#define HAVE_VIRNODEDEVICELOOKUPSCSIHOSTBYWWN 1
#define HAVE_VIRSTORAGEVOLWIPEPATTERN 1
#define HAVE_VIRSTORAGEPOOLLISTALLVOLUMES 1
#define HAVE_VIRDOMAINCREATEWITHFILES 1
#define HAVE_VIRDOMAINCREATEXMLWITHFILES 1
#define HAVE_VIRDOMAINOPENGRAPHICS 1
#define HAVE_VIRSTORAGEVOLRESIZE 1
#define HAVE_VIRDOMAINPMWAKEUP 1
#define HAVE_VIRDOMAINBLOCKRESIZE 1
#define HAVE_VIRDOMAINPMSUSPENDFORDURATION 1
#define HAVE_VIRDOMAINMIGRATEGETCOMPRESSIONCACHE 1
#define HAVE_VIRDOMAINMIGRATESETCOMPRESSIONCACHE 1
#define HAVE_VIRDOMAINGETDISKERRORS 1
#define HAVE_VIRDOMAINGETEMULATORPININFO 1
#define HAVE_VIRDOMAINPINEMULATOR 1
#define HAVE_VIRDOMAINGETSECURITYLABELLIST 1
#define HAVE_VIRDOMAINGETJOBSTATS 1
#define HAVE_VIRDOMAINGETBLOCKIOTUNE 1
#define HAVE_VIRDOMAINSETBLOCKIOTUNE 1
#define HAVE_VIRDOMAINBLOCKCOMMIT 1
#define HAVE_VIRDOMAINBLOCKPULL 1
#define HAVE_VIRDOMAINBLOCKJOBSETSPEED 1
#define HAVE_VIRDOMAINGETBLOCKJOBINFO 1
#define HAVE_VIRDOMAINBLOCKJOBABORT 1
#define HAVE_VIRDOMAINGETINTERFACEPARAMETERS 1
#define HAVE_VIRDOMAINBLOCKSTATSFLAGS 1
#define HAVE_VIRDOMAINGETNUMAPARAMETERS 1
#define HAVE_VIRCONNECTGETCPUMODELNAMES 1
#define HAVE_VIRDOMAINMIGRATE3 1
#define HAVE_VIRDOMAINGETCPUSTATS 1
#define HAVE_CONST_VIR_MIGRATE_LIVE 1
#define HAVE_CONST_VIR_MIGRATE_PEER2PEER 1
#define HAVE_CONST_VIR_MIGRATE_TUNNELLED 1
#define HAVE_CONST_VIR_MIGRATE_PERSIST_DEST 1
#define HAVE_CONST_VIR_MIGRATE_UNDEFINE_SOURCE 1
#define HAVE_CONST_VIR_MIGRATE_PAUSED 1
#define HAVE_CONST_VIR_MIGRATE_NON_SHARED_DISK 1
#define HAVE_CONST_VIR_MIGRATE_NON_SHARED_INC 1
#define HAVE_CONST_VIR_DOMAIN_XML_UPDATE_CPU 1
#define HAVE_CONST_VIR_MEMORY_PHYSICAL 1
#define HAVE_CONST_VIR_DOMAIN_START_PAUSED 1
#define HAVE_CONST_VIR_DUMP_CRASH 1
#define HAVE_CONST_VIR_DUMP_LIVE 1
#define HAVE_CONST_VIR_DOMAIN_DEVICE_MODIFY_CURRENT 1
#define HAVE_CONST_VIR_DOMAIN_DEVICE_MODIFY_LIVE 1
#define HAVE_CONST_VIR_DOMAIN_DEVICE_MODIFY_CONFIG 1
#define HAVE_CONST_VIR_DOMAIN_DEVICE_MODIFY_FORCE 1
#define HAVE_CONST_VIR_INTERFACE_XML_INACTIVE 1
#define HAVE_CONST_VIR_STORAGE_POOL_INACCESSIBLE 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_DEFINED 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_STARTED 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_SUSPENDED_IOERROR 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_ID_WATCHDOG 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_ID_IO_ERROR 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_ID_GRAPHICS 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_ID_REBOOT 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_ID_RTC_CHANGE 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_ID_IO_ERROR_REASON 1
#define HAVE_CONST_VIR_DOMAIN_AFFECT_CURRENT 1
#define HAVE_CONST_VIR_DOMAIN_MEM_CURRENT 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_ID_CONTROL_ERROR 1
#define HAVE_CONST_VIR_DOMAIN_PAUSED_SHUTTING_DOWN 1
#define HAVE_CONST_VIR_DOMAIN_START_AUTODESTROY 1
#define HAVE_CONST_VIR_DOMAIN_START_BYPASS_CACHE 1
#define HAVE_CONST_VIR_DOMAIN_START_FORCE_BOOT 1
#define HAVE_CONST_VIR_DOMAIN_MEMORY_STAT_ACTUAL_BALLOON 1
#define HAVE_CONST_VIR_DUMP_BYPASS_CACHE 1
#define HAVE_CONST_VIR_MIGRATE_CHANGE_PROTECTION 1
#define HAVE_CONST_VIR_DOMAIN_SAVE_BYPASS_CACHE 1
#define HAVE_CONST_VIR_DOMAIN_SAVE_RUNNING 1
#define HAVE_CONST_VIR_DOMAIN_SAVE_PAUSED 1
#define HAVE_CONST_VIR_NETWORK_UPDATE_COMMAND_NONE 1
#define HAVE_CONST_VIR_NETWORK_UPDATE_COMMAND_MODIFY 1
#define HAVE_CONST_VIR_NETWORK_UPDATE_COMMAND_DELETE 1
#define HAVE_CONST_VIR_NETWORK_UPDATE_COMMAND_ADD_LAST 1
#define HAVE_CONST_VIR_NETWORK_UPDATE_COMMAND_ADD_FIRST 1
#define HAVE_CONST_VIR_NETWORK_SECTION_NONE 1
#define HAVE_CONST_VIR_NETWORK_SECTION_BRIDGE 1
#define HAVE_CONST_VIR_NETWORK_SECTION_DOMAIN 1
#define HAVE_CONST_VIR_NETWORK_SECTION_IP 1
#define HAVE_CONST_VIR_NETWORK_SECTION_IP_DHCP_HOST 1
#define HAVE_CONST_VIR_NETWORK_SECTION_IP_DHCP_RANGE 1
#define HAVE_CONST_VIR_NETWORK_SECTION_FORWARD 1
#define HAVE_CONST_VIR_NETWORK_SECTION_FORWARD_INTERFACE 1
#define HAVE_CONST_VIR_NETWORK_SECTION_FORWARD_PF 1
#define HAVE_CONST_VIR_NETWORK_SECTION_PORTGROUP 1
#define HAVE_CONST_VIR_NETWORK_SECTION_DNS_HOST 1
#define HAVE_CONST_VIR_NETWORK_SECTION_DNS_TXT 1
#define HAVE_CONST_VIR_NETWORK_SECTION_DNS_SRV 1
#define HAVE_CONST_VIR_NETWORK_UPDATE_AFFECT_CURRENT 1
#define HAVE_CONST_VIR_NETWORK_UPDATE_AFFECT_LIVE 1
#define HAVE_CONST_VIR_NETWORK_UPDATE_AFFECT_CONFIG 1
#define HAVE_CONST_VIR_DOMAIN_PMSUSPENDED 1
#define HAVE_CONST_VIR_DOMAIN_RUNNING_WAKEUP 1
#define HAVE_CONST_VIR_DOMAIN_PMSUSPENDED_UNKNOWN 1
#define HAVE_CONST_VIR_DOMAIN_UNDEFINE_MANAGED_SAVE 1
#define HAVE_CONST_VIR_DOMAIN_UNDEFINE_SNAPSHOTS_METADATA 1
#define HAVE_CONST_VIR_DOMAIN_PAUSED_SNAPSHOT 1
#define HAVE_CONST_VIR_DOMAIN_PMSUSPENDED_DISK_UNKNOWN 1
#define HAVE_CONST_VIR_DUMP_RESET 1
#define HAVE_CONST_VIR_DUMP_MEMORY_ONLY 1
#define HAVE_CONST_VIR_DOMAIN_SHUTDOWN_DEFAULT 1
#define HAVE_CONST_VIR_DOMAIN_SHUTDOWN_ACPI_POWER_BTN 1
#define HAVE_CONST_VIR_DOMAIN_SHUTDOWN_GUEST_AGENT 1
#define HAVE_CONST_VIR_DOMAIN_SHUTDOWN_INITCTL 1
#define HAVE_CONST_VIR_DOMAIN_SHUTDOWN_SIGNAL 1
#define HAVE_CONST_VIR_DOMAIN_REBOOT_DEFAULT 1
#define HAVE_CONST_VIR_DOMAIN_REBOOT_ACPI_POWER_BTN 1
#define HAVE_CONST_VIR_DOMAIN_REBOOT_GUEST_AGENT 1
#define HAVE_CONST_VIR_DOMAIN_REBOOT_INITCTL 1
#define HAVE_CONST_VIR_DOMAIN_REBOOT_SIGNAL 1
#define HAVE_CONST_VIR_DOMAIN_DESTROY_DEFAULT 1
#define HAVE_CONST_VIR_DOMAIN_DESTROY_GRACEFUL 1
#define HAVE_CONST_VIR_CONNECT_LIST_NODE_DEVICES_CAP_FC_HOST 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_LIST_INACTIVE 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_CREATE_REDEFINE 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_CREATE_LIVE 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_REBASE_SHALLOW 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_REBASE_REUSE_EXT 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_REBASE_COPY_RAW 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_REBASE_COPY 1
#define HAVE_CONST_VIR_DOMAIN_CHANNEL_FORCE 1
#define HAVE_CONST_VIR_DOMAIN_CONSOLE_FORCE 1
#define HAVE_CONST_VIR_DOMAIN_CONSOLE_SAFE 1
#define HAVE_CONST_VIR_STORAGE_VOL_WIPE_ALG_ZERO 1
#define HAVE_CONST_VIR_STORAGE_VOL_WIPE_ALG_NNSA 1
#define HAVE_CONST_VIR_STORAGE_VOL_WIPE_ALG_DOD 1
#define HAVE_CONST_VIR_STORAGE_VOL_WIPE_ALG_BSI 1
#define HAVE_CONST_VIR_STORAGE_VOL_WIPE_ALG_GUTMANN 1
#define HAVE_CONST_VIR_STORAGE_VOL_WIPE_ALG_SCHNEIER 1
#define HAVE_CONST_VIR_STORAGE_VOL_WIPE_ALG_PFITZNER7 1
#define HAVE_CONST_VIR_STORAGE_VOL_WIPE_ALG_PFITZNER33 1
#define HAVE_CONST_VIR_STORAGE_VOL_WIPE_ALG_RANDOM 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_RESIZE_BYTES 1
#define HAVE_CONST_VIR_DOMAIN_MEMORY_STAT_RSS 1
#define HAVE_CONST_VIR_MIGRATE_UNSAFE 1
#define HAVE_CONST_VIR_MIGRATE_OFFLINE 1
#define HAVE_CONST_VIR_MIGRATE_COMPRESSED 1
#define HAVE_CONST_VIR_MIGRATE_ABORT_ON_ERROR 1
#define HAVE_CONST_VIR_CONNECT_NO_ALIASES 1
#define HAVE_CONST_VIR_DOMAIN_XML_MIGRATABLE 1
#define HAVE_CONST_VIR_NETWORK_XML_INACTIVE 1
#define HAVE_CONST_VIR_STORAGE_VOL_DIR 1
#define HAVE_CONST_VIR_STORAGE_VOL_NETWORK 1
#define HAVE_CONST_VIR_STORAGE_XML_INACTIVE 1
#define HAVE_CONST_VIR_STORAGE_VOL_CREATE_PREALLOC_METADATA 1
#define HAVE_CONST_VIR_SECRET_USAGE_TYPE_CEPH 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_REVERT_RUNNING 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_REVERT_PAUSED 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_REVERT_FORCE 1
#define HAVE_CONST_VIR_SECRET_USAGE_TYPE_ISCSI 1
#define HAVE_CONST_VIR_DOMAIN_NOSTATE_UNKNOWN 1
#define HAVE_CONST_VIR_DOMAIN_RUNNING_CRASHED 1
#define HAVE_CONST_VIR_DOMAIN_PAUSED_CRASHED 1
#define HAVE_CONST_VIR_DOMAIN_CRASHED_PANICKED 1
#define HAVE_CONST_VIR_NODE_CPU_STATS_ALL_CPUS 1
#define HAVE_CONST_VIR_NODE_MEMORY_STATS_ALL_CELLS 1
#define HAVE_CONST_VIR_DOMAIN_VCPU_CURRENT 1
#define HAVE_CONST_VIR_DOMAIN_VCPU_GUEST 1
#define HAVE_CONST_VIR_NETWORK_UPDATE_COMMAND_DELETE 1
#define HAVE_CONST_VIR_STORAGE_POOL_BUILD_NO_OVERWRITE 1
#define HAVE_CONST_VIR_STORAGE_POOL_BUILD_OVERWRITE 1
#define HAVE_CONST_VIR_KEYCODE_SET_LINUX 1
#define HAVE_CONST_VIR_KEYCODE_SET_XT 1
#define HAVE_CONST_VIR_KEYCODE_SET_ATSET1 1
#define HAVE_CONST_VIR_KEYCODE_SET_ATSET2 1
#define HAVE_CONST_VIR_KEYCODE_SET_ATSET3 1
#define HAVE_CONST_VIR_KEYCODE_SET_OSX 1
#define HAVE_CONST_VIR_KEYCODE_SET_XT_KBD 1
#define HAVE_CONST_VIR_KEYCODE_SET_USB 1
#define HAVE_CONST_VIR_KEYCODE_SET_WIN32 1
#define HAVE_CONST_VIR_KEYCODE_SET_RFB 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_SHUTDOWN 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_PMSUSPENDED 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_CRASHED 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_STARTED_WAKEUP 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_SUSPENDED_RESTORED 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_SUSPENDED_FROM_SNAPSHOT 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_SUSPENDED_API_ERROR 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_RESUMED_FROM_SNAPSHOT 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_SHUTDOWN_FINISHED 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_PMSUSPENDED_MEMORY 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_PMSUSPENDED_DISK 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_CRASHED_PANICKED 1
#define HAVE_CONST_VIR_SECRET_USAGE_TYPE_NONE 1
#define HAVE_CONST_VIR_CONNECT_BASELINE_CPU_EXPAND_FEATURES 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_DELETE_METADATA_ONLY 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_DELETE_CHILDREN_ONLY 1
#define HAVE_CONST_VIR_DOMAIN_EVENT_GRAPHICS_ADDRESS_UNIX 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_COMMIT_SHALLOW 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_COMMIT_DELETE 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_JOB_TYPE_UNKNOWN 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_JOB_TYPE_PULL 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_JOB_TYPE_COPY 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_JOB_TYPE_COMMIT 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_JOB_ABORT_ASYNC 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_JOB_ABORT_PIVOT 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_JOB_COMPLETED 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_JOB_FAILED 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_JOB_CANCELED 1
#define HAVE_CONST_VIR_DOMAIN_BLOCK_JOB_READY 1
#define HAVE_CONST_VIR_CONNECT_LIST_NODE_DEVICES_CAP_SCSI_GENERIC 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_CREATE_REUSE_EXT 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_CREATE_QUIESCE 1
#define HAVE_CONST_VIR_DOMAIN_SNAPSHOT_CREATE_ATOMIC 1
#define HAVE_CONST_VIR_FROM_VMWARE 1
#define HAVE_CONST_VIR_FROM_AUDIT 1
#define HAVE_CONST_VIR_FROM_SYSINFO 1
#define HAVE_CONST_VIR_FROM_STREAMS 1
#define HAVE_CONST_VIR_FROM_XENAPI 1
#define HAVE_CONST_VIR_FROM_HOOK 1
#define HAVE_CONST_VIR_ERR_HOOK_SCRIPT_FAILED 1
#define HAVE_CONST_VIR_ERR_MIGRATE_PERSIST_FAILED 1
#define HAVE_CONST_VIR_ERR_OPERATION_TIMEOUT 1
#define HAVE_CONST_VIR_ERR_CONFIG_UNSUPPORTED 1
#define HAVE_CONST_VIR_FROM_XENXM 1
#define HAVE_CONST_VIR_ERR_OPERATION_INVALID 1
#define HAVE_CONST_VIR_ERR_NO_SECURITY_MODEL 1
#define HAVE_CONST_VIR_ERR_AUTH_FAILED 1
#define HAVE_CONST_VIR_FROM_PHYP 1
#define HAVE_CONST_VIR_FROM_ESX 1
#define HAVE_CONST_VIR_FROM_ONE 1
#define HAVE_CONST_VIR_FROM_VBOX 1
#define HAVE_CONST_VIR_FROM_LXC 1
#define HAVE_CONST_VIR_FROM_UML 1
#define HAVE_CONST_VIR_FROM_NETWORK 1
#define HAVE_CONST_VIR_FROM_DOMAIN 1
#define HAVE_CONST_VIR_FROM_STATS_LINUX 1
#define HAVE_CONST_VIR_FROM_XEN_INOTIFY 1
#define HAVE_CONST_VIR_FROM_SECURITY 1
#define HAVE_VIRDOMAINQEMUMONITORCOMMAND 1
#define HAVE_VIRDOMAINQEMUATTACH 1
#define HAVE_VIRDOMAINQEMUAGENTCOMMAND 1
#define HAVE_CONST_VIR_DOMAIN_QEMU_AGENT_COMMAND_BLOCK 1
#define HAVE_CONST_VIR_DOMAIN_QEMU_AGENT_COMMAND_DEFAULT 1
#define HAVE_CONST_VIR_DOMAIN_QEMU_AGENT_COMMAND_NOWAIT 1
#define HAVE_CONST_VIR_DOMAIN_QEMU_MONITOR_COMMAND_DEFAULT 1
#define HAVE_CONST_VIR_DOMAIN_QEMU_MONITOR_COMMAND_HMP 1
#define HAVE_VIRDOMAINLXCOPENNAMESPACE 1
#define HAVE_VIRDOMAINLXCENTERNAMESPACE 1
#define HAVE_VIRDOMAINLXCENTERSECURITYLABEL 1
#endif
