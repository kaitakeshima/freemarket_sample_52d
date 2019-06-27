
$(document).on('turbolinks:load',function(){
$(function(){
  var $dir1 = location.href.split("/")
  var $dir2 = $dir1[$dir1.length -1];
  var url = $dir2
  $(window).on('load', function(e){
    debugger
    if ("flash_error" == url){
    alert("エラーが発生しました。")
    }
  })
  $(".btn-square-pop-half-delete").on('click', function(){
    if(window.confirm("データを削除しますがよろしいですか？")) {
        location.href = $(this).attr('href');
    } else {
        return false;
    }
  })
})
})