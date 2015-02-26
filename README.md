
# Web client using libvirt

## Introduction
libvirt-vm-client is a libvirt-based Web interface for managing virtual machines.


##Setup
起動前にsqliteで管理対象のIPアドレスおよびVMのドメイン名を登録してください。
登録されたIPアドレス,ドメイン名を利用して、起動しているVMなどの管理を実現します。

##運用動作環境


##依存関係

- gem'sinatra'
- gem 'sinatra-reloader'
- gem "sqlite3"
- gem "activerecord"
- gem "ruby-libvirt"

- 
## How to execute
ruby app.rb (Sinatraを利用しているため、デフォルトで4563にポートが設定されます。）










