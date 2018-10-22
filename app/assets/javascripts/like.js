$(function() {
  var $heart = $(".like-box img");
  $(".like-box").on("click", function(){
  var $likeSum = $("#like-sum")
  like_function(#{@prototype.id}, $(this), $heart, $likeSum)
  });

  function like_function(id, button, heart, sum) {
    if (button.hasClass("decrement")){
      $.ajax({
        url: + id,
        type: "delete",
        data: { prototype_id:id },
        dataType: "json"
      })
      .done(function(data){
        button.removeClass("decrement").addClass("increment")
        heart.attr("src", "/assets/images/icon_heart.svg")
        sum.text(data["count"])
      })
    }
  }
})
    // else{
    //   $.ajax({url: "/likes", type: "post", data: {post_id: id, dataType: "json"}})
    //   .done(function(data){
    //   button.removeClass("increment").addClass("decrement")
    //   heart.attr("src", "/assets/icon_heart_red.s")
    //   sum.text(data["count"])







