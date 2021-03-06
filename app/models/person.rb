class Person < ActiveRecord::Base
	belongs_to :human, polymorphic: true
	attr_accessor :human_artist, :human_user
	before_validation :assign_human
	before_create :send_to_pipeline
	validates_presence_of :human_id

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

	def send_to_pipeline
		if self.human.is_a? User
			details = {'email' => self.human.email}
		else
			details = {'full_name' => self.human.name}
		end
		begin
			response = RestClient.post "https://api.pipelinedeals.com/api/v3/people.json?api_key=#{ENV['PIPELINE_KEY']}",
			{ 'person' => details }, :accept => :json
		case response.code
		when 200
			res = JSON.parse(response.body)
			self.pipeline_id = res["id"]
		end
		rescue RestClient::BadRequest => error
			message = JSON.parse(error.response)['message']
			errors.add(:human, message)
			false
		end
	end
end