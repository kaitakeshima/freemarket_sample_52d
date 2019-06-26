
$(document).on('turbolinks:load',function(){
$(function(){
  var $dir1 = location.href.split("/")
  var $dir2 = $dir1[$dir1.length -1];
  var url = $dir2
  $(window).on('load', function(e){
    debugger
    if ("flash_error" == url){
    alert("えらーがはっせいしました")
    }
  })
})
})