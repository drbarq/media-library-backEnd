FactoryBot.define do
    factory :group do
      name { Faker::Lorem.word }
    #   email { Faker::fake.ascii_free_email(*args, **kwargs) }
      description { Faker::Lorem.word }
    end
  end