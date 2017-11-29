User.destroy_all
Photo.destroy_all
Comment.destroy_all
Tag.destroy_all

20.times do |index|
  User.create!(username: Faker::LordOfTheRings.character,
                  email: Faker::Internet.email,
                  password: Faker::Internet.password
                )
end

p "Created #{User.count} users"

100.times do |index|
  Photo.create!(image: Faker::LoremPixel.image("400x200", false, 'nature'),
                  view_count: rand(1..15000),
                  description: Faker::Hipster.sentence(3),
                  location: Faker::Address.country,
                  date: Faker::Date.between(365.days.ago, Date.today),
                  camera_type: Faker::Hacker.abbreviation,
                  tag_id: rand(1..250),
                  user_id: rand((User.first.id)..(User.first.id+19)))
end

p "Created #{Photo.count} photos"

250.times do |index|
  Comment.create!(body: Faker::Hacker.say_something_smart,
                  user_id: rand((User.first.id)..(User.first.id+19)),
                  photo_id: rand((Photo.first.id)..(Photo.first.id+99)))
end

p "Created #{Comment.count} comments"

250.times do |index|
  Tag.create!(tag: Faker::Book.genre,
                  photo_id: rand((Photo.first.id)..(Photo.first.id+99)))
end

p "Created #{Tag.count} tags"
