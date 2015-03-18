class Charge < ActiveRecord::Base
	belongs_to :user
	attr_accessible :amount, :stripe_card_token
end