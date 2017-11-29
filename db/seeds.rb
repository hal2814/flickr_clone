User.destroy_all
Photo.destroy_all
Comment.destroy_all
Tag.destroy_all

20.times do |index|
  User.create!(username: Faker::LordOfTheRings.character,
                  email: Faker::Internet.email,
                  encrypted_password: Faker::Internet.password,
                  password_salt: Faker::Code.asin,
                  admin: false,
                  privilege: true,)
end

100.times do |index|
  Photo.create!(question: Faker::ChuckNorris.fact,
                  category: Faker::Hacker.noun,
                  user_id: rand((User.first.id)..(User.first.id+19)))
end

250.times do |index|
  Comment.create!(response: Faker::Hacker.say_something_smart,
                  best: false,
                  user_id: rand((User.first.id)..(User.first.id+19)),
                  question_id: rand((Photo.first.id)..(Photo.first.id+99)))
end

250.times do |index|
  Tag.create!(response: Faker::Hacker.say_something_smart,
                  best: false,
                  user_id: rand((User.first.id)..(User.first.id+19)),
                  question_id: rand((Photo.first.id)..(Photo.first.id+99)))
end


p "Created #{User.count} users"
p "Created #{Photo.count} questions"
p "Created #{Comment.count} responses"
p "Created #{Tag.count} responses"
