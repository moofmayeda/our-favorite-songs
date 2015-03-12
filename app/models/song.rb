class Song < ActiveRecord::Base
	has_many :favorites
	has_many :users, through: :favorites
	belongs_to :artist
	validates :name, presence: true
	validates :artist, presence: true
end
