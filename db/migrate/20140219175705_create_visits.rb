class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :ip
      t.string :referrer

      t.timestamps
    end
  end
end
