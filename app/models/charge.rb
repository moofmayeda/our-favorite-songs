class Charge < ActiveRecord::Base
	belongs_to :user
	attr_accessible :amount, :stripe_customer_token, :user_id


	def credit_card
	end

	def cvc
	end

	def exp_month
	end

	def exp_year
	end
end