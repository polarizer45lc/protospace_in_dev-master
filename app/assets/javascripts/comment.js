$(function(){
  // コメントビュー描画
  function buildHTML(comment){
    var html = `
    <div class='comment-box'>
      <div class='user-avatar'>
        <img src='${comment.img}'>
      </div>
      <div class='comment-user'>
        <a '/users/${comment.id}'>${comment.name} </a>
      </div>
      <div class='comment-text'>
        ${comment.comment}
      </div>
      <div class='comment-btn'>
        <a '#'>編集</a>
        <a '#'>削除</a>`
    return html;
  }
  // コメントAjax化
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: 'POST',
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('#comment-list').append(html)
      $('.comment-form').val('')
      $('#comment-submit').attr('disabled',false);
    })
    .fail(function(){
      alert('コメントの投稿に失敗しました');
    })
  })
});
