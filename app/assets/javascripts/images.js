$(document).ready(function(){  
  // disable auto discover
  Dropzone.autoDiscover = true;
  
  var dropzone = new Dropzone (".dropzone", { 
    maxFilesize: 400, // set the maximum file size to 256 MB
    paramName: "image[extrapic]", // Rails expects the file upload to be something like model[field_name]
	addRemoveLinks: true // don't show remove links on dropzone itself.
  });

  dropzone.on("success", function(file) {
    this.removeFile(file);
    $.getScript(gon.car_id);
  })
});

