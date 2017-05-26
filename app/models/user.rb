class User < ActiveRecord::Base
  has_secure_password
  has_many :hits
  has_many :songs, through: :hits, source: :song
end
