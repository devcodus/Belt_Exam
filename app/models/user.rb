class User < ActiveRecord::Base
  has_secure_password
  has_many :hits
  has_many :songs, through: :hits, source: :song
  validates :first_name, :last_name, :email, presence: :true
end
