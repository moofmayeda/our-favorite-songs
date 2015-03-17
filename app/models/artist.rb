class Artist < ActiveRecord::Base
	has_many :songs, inverse_of: :artist
	has_many :users, through: :songs
	validates_uniqueness_of :name
	accepts_nested_attributes_for :songs
	attr_accessible :name, :songs_attributes, :artist_pic
	has_attached_file :artist_pic, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :artist_pic, content_type: /\Aimage\/.*\Z/
end