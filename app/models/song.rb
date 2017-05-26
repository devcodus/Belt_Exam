class Song < ActiveRecord::Base
  has_many :hits
  has_many :listeners, through: :hits, source: :user
  validates :title, :artist, presence: true, length: {minimum: 2}

end
