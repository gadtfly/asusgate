class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :ip, limit: 8
      t.string :referrer

      t.timestamps
    end
  end
end
