function Drive(driveType){
var result;
 if (driveType == "rear wheel drive") {
 // alert(driveType);
  result = "RWD";
 }
else if (driveType == "all wheel drive") {
result = "AWD";
}
else if (driveType == "four wheel drive") {
result = "4x4";
}
else if (driveType == "front wheel drive") {
result = "FWD";
}
 else {
result = " ";
 }
return result;
}

$(document).ready(function(){
    $('#Vinbutton').click(function(){
        //start ajax request
                $.ajax({
                 url: "https://api.edmunds.com/api/vehicle/v2/vins/" + $('#car_vin').val() +"?fmt=json&api_key=fbg8dxjqeaeug88jy8npf8hh",// setting vin number in URL with $('#car_vin').val()
                    //force to handle it as text
                    dataType: "text",
                    success: function(data) {
                        //data downloaded so we call parseJSON function 
                        //and pass downloaded data
                        var json = $.parseJSON(data);
                        //now json variable contains data in json format
                        //let's display a few items
						$('#car_make_id').find("option[text=" + json.make.name + "]").attr("selected", true); // set make name in DDB
						$('#car_carType').find("option[text=" + json.categories.vehicleStyle + "]").attr("selected", true); // set vehicle car type
						//$('#trim').val(json.years[0].styles[0].trim); // to set the trim when a DB value added
						$('#car_year').val(json.years[0].year); // sets the year of the car
						$('#car_epa').val(json.MPG.city + "/" + json.MPG.highway); //sets the City/Highway MPG
						$('#car_drive').val(Drive(json.drivenWheels)); // call to the Drive function to provide shortened name
						$('optgroup[label*="' + json.make.name + '"]').find("option[text=" + json.model.name + "]").attr("selected", true); // set model name after going through the make optgroup
                    }
              });
    });
});