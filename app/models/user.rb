class User < ActiveRecord::Base
  has_many :questions
  has_many :comments
  has_many :answers
end
