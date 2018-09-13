$(function(){
  $(".btn-default.btn-popular").on("click",function(e){
  	alert("popularボタンクリック");
  	e.preventDefault();
  });

  $(".btn-default.btn-popular-newest").on("click",function(e){
  	alert("newestボタンクリック");
  	e.preventDefault();
  });
  
});