$(function(){
  $('#main_image_uploader').change(function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }
    reader.onload = (function(file){
      $(".main_photo").remove();
      return function(e){
        $("#main_preview").attr("src", e.target.result);
        $("#main_preview").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);
  });
});



$(function(){
  $('#sub_image_uploader0').change(function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return true;
    }
    reader.onload = (function(file){
      return function(e){
        $("#sub_preview0").attr("src", e.target.result);
        $("#sub_preview0").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);
  });
});

$(function(){
  $('#sub_image_uploader1').change(function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return true;
    }
    reader.onload = (function(file){
      return function(e){
        $("#sub_preview1").attr("src", e.target.result);
        $("#sub_preview1").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);
  });
});

$(function(){
  $('#sub_image_uploader2').change(function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return true;
    }
    reader.onload = (function(file){
      return function(e){
        $("#sub_preview2").attr("src", e.target.result);
        $("#sub_preview2").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);
  });
});
