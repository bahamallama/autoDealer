$(document).ready(function() {
  $('#calcPayment').click(function() {
	  var p, r, rate, t, total, numOfPayments; // create variables
	  r = ($('#interest_rate').val()); // get interest rate from form
	  p = ($('#price').val()); // get price from form
	  t = ($('#term').val()); //get length of loan from form
	  p = p.replace(/[&\/\\#,+()$~%'":*?<>{}]/g,''); // strip out all characters but numbers and leave decimal
	  p = Math.round(p) // round out decimal
    rate = (r / 12); // calculate monthly interest rate
	numOfPayments = ((t * 12) * -1);// calculate number of payments
   	total =  ((p * rate) /  (1 - (Math.pow((1 + rate), numOfPayments)))); // calculate car payment amout per month
	$('#total').val('$'+total.toFixed(2)); // print to total text box
  });
});
