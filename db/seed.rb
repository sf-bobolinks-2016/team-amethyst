User.delete_all
10.times do
  User.create!( username: Faker::Internet.user_name,
                email: Faker::Internet.email,
                password: "password")
end

# posts which contain question, answers, comments

10.times do
  Question.create!( user_id: (1..10).to_a.sample,
                    content: Faker::Lorem.characters(10))
end

10.times do
  Answer.create!( user_id: (1..10).to_a.sample,
                  question_id: (1..10).to_a.sample,
                  content: Faker::Lorem.sentence(2))
end

10.times do
  Comment.create!(user_id: (1..10).to_a.sample,
                  commentable_id: (1..10).to_a.sample,
                  commentable_type:["Question","Answer"].sample,
                  content: Faker::Lorem.sentence(1))
end


10.times do
  Post.create!(question_id: (1..10).to_a.sample)
end
