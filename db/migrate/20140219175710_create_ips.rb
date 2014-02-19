class CreateIps < ActiveRecord::Migration
  def change
    create_table :ips, id: false do |t|
      t.primary_key :ip, :integer, limit: 8
      t.index :ip
    end
  end
end
