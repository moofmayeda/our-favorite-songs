class Favorite < ActiveRecord::Base
	belongs_to :song
	belongs_to :user
	validates :song_id, presence: true
	validates :user_id, presence: true
	validates_uniqueness_of :user_id, scope: :song_id
	scope :recent, order("created_at DESC").limit(10)
end