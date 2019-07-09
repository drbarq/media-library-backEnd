FactoryBot.define do
    factory :user do
      name { Faker::Lorem.word }
    #   email { Faker::fake.ascii_free_email(*args, **kwargs) }
      email { Faker::Number.number(10) }
    end
  end