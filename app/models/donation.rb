# == Schema Information
#
# Table name: donations
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  cents      :integer
#  donor_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Donation < ActiveRecord::Base
  belongs_to :donor, :class_name => "Person"
  has_and_belongs_to_many :podcasts
  
  validates_presence_of :donor
  validates_numericality_of :cents, 
    :greater_than_or_equal_to => 100,
    :only_integer => true
  
  # Virtual attribute; sets the 'cents' field in the database
  def amount=(val)
    self.cents = val ? (val * 100).to_i : nil
  end
  
  # Virtual attribute; based on the 'cents' field in the database
  def amount
    cents.to_f / 100
  end
    
end
