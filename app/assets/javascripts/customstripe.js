$(document).ready(function() {
	var key = $("#STRIPE_KEY").text();
	Stripe.setPublishableKey(key);

	$('#new_charge').submit(function(event) {
		var $form = $(this);
		$('input[type=submit]').attr('disabled', true);

		Stripe.card.createToken($form, stripeResponseHandler);
		return false;
	});
});

function stripeResponseHandler(status, response) {
	var $form = $('#new_charge');

	if (response.error) {
		console.log(response.error.message);
	} else {
		var token = response.id;
		$form.append($('<input type="hidden" name="stripeToken" />').val(token));
		$form.get(0).submit();
	}
}