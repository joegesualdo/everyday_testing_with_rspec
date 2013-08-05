# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    name Faker::Name.name
    email Faker::Internet.email
    message Faker::Lorem.paragraph

    factory :invalid_messages do
      email nil
    end
  end
end
