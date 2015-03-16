class Artist < ActiveRecord::Base
	has_many :songs, inverse_of: :artist
	has_many :users, through: :songs
	validates_uniqueness_of :name
	accepts_nested_attributes_for :songs
end