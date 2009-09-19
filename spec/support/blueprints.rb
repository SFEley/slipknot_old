require 'machinist/active_record'
require 'sham'
require 'faker'

Sham.amount {rand(100).to_f}
Sham.name {Faker::Name.name}
Sham.email {Faker::Internet.email}
Sham.podcast {Faker::Company.bs}
Sham.url {"http://" + Faker::Internet.domain_name}

Podcast.blueprint do
  name {Sham.podcast}
  url {Sham.url}
end

Person.blueprint do
  name {Sham.name}
  email {Sham.email}
end

Donation.blueprint do
  donor {Person.make}
  amount {Sham.amount}
end