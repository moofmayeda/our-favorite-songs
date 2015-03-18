$(document).ready(function() {
	var key = $("#STRIPE_KEY").text();
	Stripe.setPublishableKey(key);
});