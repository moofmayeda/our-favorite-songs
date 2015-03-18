ActiveAdmin.register Charge do
	belongs_to :user, optional: true

	form do |f|
		f.semantic_errors *f.object.errors.keys
		f.inputs "Payment info" do
			f.input :user
			f.input :amount
			f.input :credit_card, input_html: {name: "", "data-stripe" => "number"}
			f.input :cvc, input_html: {name: "", "data-stripe" => "cvc"}
			f.inputs "Expiration (MM/YYYY)" do
				f.input :exp_month, input_html: {name: "", "data-stripe" => "exp-month"}
				f.input :exp_year, input_html: {name: "", "data-stripe" => "exp-year"}
			end
		end
		f.actions

		within @head do
			script src: "https://js.stripe.com/v2/", type: "text/javascript"
			script src: javascript_path('customstripe.js'), type: "text/javascript"
		end

		f.form_buffers.last << "<span id='payment-errors'></span><span id='STRIPE_KEY' style='display:none'>".html_safe + ENV['STRIPE_PUBLISHABLE_KEY']
	end

	before_create do |charge|
		Stripe.api_key = ENV['STRIPE_SECRET_KEY']

		token = params[:stripeToken]

		begin
			stripeCharge = Stripe::Charge.create(
				amount: charge.amount,
				currency: "usd",
				source: token
			)
		rescue Stripe::CardError => e
		end
	end
end