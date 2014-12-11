class User < ActiveRecord::Base

  before_save { self.username = username.downcase }
  validates :firstname, presence: true, length: { maximum: 50 }
  validates :username, presence: true, uniqueness: true

  has_secure_password
  validates :password, length: { minimum: 6 }, unless: proc { |a| a.password.blank? }
end
