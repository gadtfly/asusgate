class CreateIps < ActiveRecord::Migration
  def change
    create_table :ips, primary_key: :ip
  end
end
