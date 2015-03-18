class Charge < ActiveRecord::Base
	belongs_to :user
	attr_accessible :amount, :stripe_customer_token, :user_id


	def credit_card
	end

	def credit_card=(arg)
	end
end