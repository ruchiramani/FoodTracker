

//   https://api.nutritionix.com/v1_1/search/cheddar%20cheese?fields=item_name%2Citem_id%2Cbrand_name%2Cnf_calories%2Cnf_total_fat&appId=[YOURID]&appKey=[YOURKEY]
$( document ).ready(function(){
  $( "#show" ).submit(function(e){
    e.preventDefault();
    e.stopPropagation();
    $.ajax({
      url: $(this).attr('action'),
      type: "POST",
      data: $(this).serialize(),
      success: function(response){
        parseResponse(response)
        console.log(response)
      },
      error: function(xhr){
     var errors = $.parseJSON(xhr.responseText).errors
     }
    })

  });


  function parseResponse(response){
    response.forEach(function(item){
      $("#ingredients").append(`<div> <p> ${item.name} -  ${item.calories} </p>  <button class="add" id="${item.id}"> Add </button> </div>` )
    })
    $('.add').click(function(e){
      e.preventDefault();
      e.stopPropagation();
      $.ajax({
        url: 'recipe_ingredient/create',
        type: "POST",
        data: $(this).serialize(),
        success: function(response){

        },
        error: function(xhr){
       var errors = $.parseJSON(xhr.responseText).errors
       }
      })
    });
  };

});
