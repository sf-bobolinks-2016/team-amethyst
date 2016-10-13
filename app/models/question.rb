class Question < ActiveRecord::Base
  belongs_to :questioner, class_name: 'User'
  has_many :comments, as: :commentable
  has_one :post
end
