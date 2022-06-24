FactoryBot.define do
  factory :facebook_status do
    name { Faker::Internet.username(specifier: 5) }
    status { Faker::Hipster.sentence }
  end
end