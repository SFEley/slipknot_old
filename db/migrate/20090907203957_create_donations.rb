class CreateDonations < ActiveRecord::Migration
  def self.up
    create_table :donations do |t|
      t.string :type
      t.integer :cents
      t.integer :donor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :donations
  end
end
