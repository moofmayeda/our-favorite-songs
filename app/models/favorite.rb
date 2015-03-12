class Favorite < ActiveRecord::Base
	belongs_to :song
	belongs_to :user
	scope :recent, order("created_at DESC").limit(10)
end