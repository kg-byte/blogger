FactoryBot.define do
  factory :comment do
    author_name { Faker::JapaneseMedia::Conan.character }
    body { Faker::Quote.matz }
    article { nil }
  end
end
