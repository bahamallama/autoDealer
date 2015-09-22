# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  models = $('#car_model_id').html()
  console.log(models)
  $('#car_make_id').change ->
    make = $('#car_make_id :selected').text()
    escaped_make = make.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(models).filter("optgroup[label=#{escaped_make}]").html()
    console.log(options)
    if options
      $('#car_model_id').html(options)
    else
      $('#car_model_id').empty()

