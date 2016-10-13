class User < ActiveRecord::Base
  has_many :questions, :comments, :answers

end
