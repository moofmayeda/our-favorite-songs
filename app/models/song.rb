class Song < ActiveRecord::Base
	has_many :users
end
