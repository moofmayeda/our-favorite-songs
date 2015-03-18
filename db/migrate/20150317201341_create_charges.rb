class CreateCharges < ActiveRecord::Migration
  def change
  	create_table :charges do |t|
  		t.integer :amount, null: false
  		t.string :stripe_customer_token
  		t.belongs_to :user
  		t.timestamps
  	end
  end
end
