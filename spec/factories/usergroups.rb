FactoryBot.define do
    factory :usergroup do
      user_id { Faker::Number.number(10) }
      group_id { Faker::Number.number(10) }
    end
  end