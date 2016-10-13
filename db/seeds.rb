# User.delete_all
10.times do
  User.create( username: Faker::Internet.user_name,
                email: Faker::Internet.email,
                password: "password")
end

# posts which contain question, answers, comments

10.times do
  Question.create( user_id: (rand(10) + 1),
                    content: Faker::Lorem.characters(10))
end

10.times do
  Answer.create( user_id: (rand(10) + 1),
                  question_id: (rand(10) + 1),
                  content: Faker::Lorem.sentence(2))
end

10.times do
  Comment.create(user_id: (rand(10) + 1),
                  commentable_id: (rand(10) + 1),
                  commentable_type:["Question","Answer"].sample,
                  content: Faker::Lorem.sentence(1))
end


10.times do
  Post.create(question_id: (rand(10) + 1))
end
