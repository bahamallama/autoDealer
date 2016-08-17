$(function () {	
	
  $('#calcPayment').click(function() {
	  var p, r, rate, t, total, numOfPayments; // create variables
	  	r = ($('#interest_rate').val()); // get interest rate from form
	  	p = ($('#price').val()); // get price from form
	  	t = ($('#term').val()); //get length of loan from form
  		t = t.replace(/[&\/\\#,+()$~%'":*?<>!^@=_\[\];`|{} ]/g,''); // strip out all characters but numbers and leave decimal
		r = r.replace(/[&\/\\#,+()$~%'":*?<>!^@=_\[\];`|{} ]/g,''); // strip out all characters but numbers and leave decimal
		p = p.replace(/[&\/\\#,+()$~%'":*?<>!^@=_\[\];`|{} ]/g,''); // strip out all characters but numbers and leave decimal
  		p = Math.round(p) // round out decimal
	  
	  if (r > 0 && t > 0 && p > 0){ // if statement to check to see if all entries are valid, ie. positive values
	  
    	rate = (r / 12); // calculate monthly interest rate
		numOfPayments = ((t * 12) * -1);// calculate number of payments
   		total =  ((p * rate) /  (1 - (Math.pow((1 + rate), numOfPayments)))); // calculate car payment amout per month
		$('#total').val('$'+total.toFixed(2)); // print to total text box	
		
	  }
	  
	  else {
		if (r == 0){
			numOfPayments = (t * 12);// calculate number of payments
			total = ((p) / (numOfPayments))
			$('#total').val('$'+total.toFixed(2)); // print to total text box
		} 
		if (r < 0){ // if r is <= 0 then run this code
			alert('Interest Rate is an incorrect value, please enter in form as 0.07 for 7 percent, 0.1 for 10 percent, etc');
			$('#interest_rate').focus(); // set focus on element to fill in
		}
		if (t <= 0){ // if t is <= 0 then run this code
			alert('Length of Loan is an incorrect value, please enter a number from 1-10');
			$('#term').focus(); // set focus on element to fill in 
		}
		if (p <= 0){ // if p is <= 0 then run this code
			alert('Price is an incorrect value, please enter a valid price');
			$('#price').focus(); // set focus on element to fill in
		}
	  }
	  
  });
  
  $( "#car_price" ).focusout(function() { // event handler to remove any symbols from price	  
	  price = ($('#car_price').val()); // get value in price
	  price = price.replace(/[&\/\\#\.,+()$~%'":*?<>!^@=_\[\];`|{} ]/g,'');// replace any characters not allowed
	  $('#car_price').val(price); // set new price without symbols back to the form
  });  
  
  $( "#car_miles" ).focusout(function() { // event handler to remove any symbols from miles
	  miles = ($('#car_miles').val()); // get value in miles
	  miles = miles.replace(/[&\/\\#\.,+()$~%'":*?<>!^@=_\[\];`|{} ]/g,''); // replace any characters not allowed
	  $('#car_miles').val(miles); // set new miles without symbols back to the form
  });  
  
  $( "#car_vin" ).change(function() { // event handler to remove any symbols from vin and check length
	  vin = ($('#car_vin').val()).replace(/[&\/\\#\.,+()$~%'":*?<>!^@=_\[\];`|{} ]/g,'');
	  vinlen = vin.length;; // get value in miles
	  if (vinlen != 0 && vinlen != 17 ){ // test if vin is not 0 and is not 17
	  	alert("Vin Number is " + vinlen + " Characters Long and Should be 17");
	  	$('#car_vin').val(vin);
		$('#car_vin').focus();
  	  }
  });   
  
});
