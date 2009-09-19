require 'machinist/active_record'
require 'sham'
require 'faker'

Sham.amount {rand(100).to_f}
Sham.name {Faker::Name.name}

Donation.blueprint do
  name {Sham.name}
  