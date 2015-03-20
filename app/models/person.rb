class Person < ActiveRecord::Base
	belongs_to :human, polymorphic: true
end