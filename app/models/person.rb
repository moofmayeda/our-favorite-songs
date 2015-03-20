class Person < ActiveRecord::Base
	belongs_to :human, polymorphic: true
	attr_accessor :human_artist, :human_user
	before_validation :assign_human

	def human_artist
		self.human.id if self.human.is_a? Artist
	end

	def human_user
		self.human.id if self.human.is_a? User
	end

	protected
	def assign_human
		if !@human_artist.blank? && !@human_user.blank?
      errors.add(:human, "can't be both an artist and a user")
    end

		unless @human_artist.blank?
			self.human = Artist.find(@human_artist)
		end

		unless @human_user.blank?
			self.human = User.find(@human_user)
		end
	end
end