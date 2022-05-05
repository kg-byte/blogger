# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
  article = Article.create(title: Faker::Quote.singular_siegler, body: Faker::Quote.matz, tag_list: Faker::Games::Pokemon.name )
  article.comments.create(author_name: Faker::JapaneseMedia::Conan.character, body: Faker::Quote.matz)
end