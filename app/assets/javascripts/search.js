

//   https://api.nutritionix.com/v1_1/search/cheddar%20cheese?fields=item_name%2Citem_id%2Cbrand_name%2Cnf_calories%2Cnf_total_fat&appId=[YOURID]&appKey=[YOURKEY]
$( document ).ready(function(){
  $( "#ingredient" ).submit(function(e){
    e.preventDefault();
    $.ajax({
      url: $(this).attr('action'),
      type: "POST",
      data: (this).serialize(),
      success: function(json) {
        console.log('here')
      },
      error: function(xhr){
     var errors = $.parseJSON(xhr.responseText).errors
   }
    })
  });
});
