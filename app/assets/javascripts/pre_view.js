$(document).ready(function(){
  $("#main_image_uploader").change(function(){
    var src = $(this).children('#main_preview').attr('src');
    console.log(src);
    alert(src);
  });
});









// $(function(){
//   $('#main_image_uploader').change(function(e){
//     //ファイルオブジェクトを取得する
//     var file = e.target.files[0];
//     var reader = new FileReader();

//     //画像でない場合は処理終了
//     if(file.type.indexOf("image") < 0){
//       alert("画像ファイルを指定してください。");
//       return false;
//     }

//     //アップロードした画像を設定する
//     reader.onload = (function(file){
//       return function(e){
//         $("#prototype_captured_images_attributes_0_status").attr("src", e.target.result);
//         $("#prototype_captured_images_attributes_0_status").attr("title", file.name);
//       };
//     })(file);
//     reader.readAsDataURL(file);
//   });
// });
