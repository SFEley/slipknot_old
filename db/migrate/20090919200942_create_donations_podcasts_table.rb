class CreateDonationsPodcastsTable < ActiveRecord::Migration
  def self.up
    create_table :donations_podcasts, :id => false do |t|
      t.belongs_to :donation
      t.belongs_to :podcast
      t.timestamps
    end
  end

  def self.down
    drop_table :donations_podcasts
  end
end
