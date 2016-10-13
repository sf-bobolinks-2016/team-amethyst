class Question < ActiveRecord::Base
  belongs_to :questioner, class_name: 'User', foreign_key: 'user_id'
  has_many :comments, as: :commentable
  has_one :post
  has_many :answers
end
