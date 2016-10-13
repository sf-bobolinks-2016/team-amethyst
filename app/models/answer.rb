class Answer < ActiveRecord::Base
  belongs_to :responder, class_name: 'User', foreign_key: 'user_id'
  belongs_to :question
  has_many :comments, as: :commentable
end
