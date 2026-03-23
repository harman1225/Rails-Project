require 'faker'

puts "Cleaning database..."

Review.destroy_all
Book.destroy_all
Author.destroy_all
Genre.destroy_all

puts "Creating genres..."

genres = ["Fiction", "Mystery", "Fantasy", "Science", "Romance"]

genres.each do |g|
  Genre.create!(name: g)
end

puts "Creating authors..."

10.times do
  Author.create!(
    name: Faker::Book.author,
    bio: Faker::Lorem.paragraph
  )
end

puts "Creating books and reviews..."

30.times do
  book = Book.create!(
    title: Faker::Book.title,
    year: rand(1990..2023),
    description: Faker::Lorem.paragraph,
    author: Author.all.sample,
    genre: Genre.all.sample
  )

  5.times do
    Review.create!(
      rating: rand(1..5),
      comment: Faker::Lorem.sentence,
      book: book
    )
  end
end

puts "Done!"