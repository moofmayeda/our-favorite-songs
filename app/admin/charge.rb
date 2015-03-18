ActiveAdmin.register Charge do
	form do |f|
		within @head do
			script src: "https://js.stripe.com/v2/", type: "text/javascript"
			script src: javascript_path('customstripe.js'), type: "text/javascript"
		end

		span ENV['STRIPE_PUBLISHABLE_KEY'], id: "STRIPE_KEY", style: "display:none"
	end
end