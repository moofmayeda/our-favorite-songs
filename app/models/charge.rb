class Charge < ActiveRecord::Base
	belongs_to :user
	attr_accessible :amount, :stripe_customer_token, :user_id
end