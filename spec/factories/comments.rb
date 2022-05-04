FactoryBot.define do
  factory :comment do
    author_name { Faker::JapaneseMedia::Conan.characte }
    body { Faker::Quote.matz }
    article { nil }
  end
end
