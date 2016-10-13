class User < ActiveRecord::Base
  has_many :questions
  has_many :comments
  has_many :answers

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate?(email, password_attempt)
    self.email == email && self.password == password_attempt
  end
end
