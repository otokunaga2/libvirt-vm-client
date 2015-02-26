
# Web client using libvirt

## Introduction
libvirt-vm-clientはWeb上で仮想マシンを操作するためのWebアプリケーションです。


##Whats' this
登録されたIPアドレス,ドメイン名を利用して、起動している仮想マシンの管理を実現します。
libvirtを利用しているため、Xen、KVMなどの上で動作する仮想マシンの操作が可能です。
※現時点では、仮想マシンのリストの確認、破棄が出来ます。

##Setup
起動前にsqliteで管理対象のIPアドレスおよびVMのドメイン名を登録してください。


##Ruby version
- 2.1.5p273



## How to execute
ruby app.rb (Sinatraを利用しているため、デフォルトで4563にポートが設定されます。）










