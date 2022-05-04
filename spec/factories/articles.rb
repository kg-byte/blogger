FactoryBot.define do 
  factory :article do 
    title { Faker::Quote.singular_siegler }
    body  { Faker::Quote.matz }
  end
end