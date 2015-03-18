ActiveAdmin.register Charge do
	belongs_to :user, optional: true

	form do |f|
		f.semantic_errors *f.object.errors.keys
		f.inputs "Payment info" do
			f.input :user
			f.input :amount
			f.input :credit_card, as: :string, input_html: {id: "blah", name: ""}
		end
		f.actions

		within @head do
			script src: "https://js.stripe.com/v2/", type: "text/javascript"
			script src: javascript_path('customstripe.js'), type: "text/javascript"
		end

		f.form_buffers.last << "<span id='STRIPE_KEY' style='display:none'>".html_safe + ENV['STRIPE_PUBLISHABLE_KEY']
	end
end