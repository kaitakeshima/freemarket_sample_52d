
$(document).on('turbolinks:load',function(){
$(function(){
  var $dir1 = location.href.split("/")
  var $dir2 = $dir1[$dir1.length -1];
  var url = $dir2
  $(document).ready(function(){

    if ("flash_error" == url){
    alert("エラーが発生しました。")
    }else{}
    if(location.href == "http://localhost:3000/" && "http://localhost:3000/" == document.referrer ){
      var referrer = document.referrer
      sessionStorage.setItem("now_referrer", referrer)
      if(sessionStorage.getItem("now_referrer") == sessionStorage.getItem("ones_more_before_referrer") ){
        if (sessionStorage.getItem("counter") != 1 ){
          sessionStorage.setItem("counter", 1)
          location.reload();
        }else{
          sessionStorage.setItem("counter", 0)
        }
      }else{
        sessionStorage.setItem("ones_more_before_referrer", ones_more_before_referrer) 
        var ones_more_before_referrer = document.referrer
        sessionStorage.setItem("ones_more_before_referrer", ones_more_before_referrer)
      }
    }else {
      var ones_more_before_referrer = document.referrer
      sessionStorage.setItem("ones_more_before_referrer", ones_more_before_referrer)
    }
    if(  location.href == "http://localhost:3000/" && "http://localhost:3000/" != document.referrer  ){
      var referrer = document.referrer
      sessionStorage.setItem("referrer", referrer)
      if (sessionStorage.getItem("one_more_before_referrer") == sessionStorage.getItem("referrer") ) {
        location.reload();
      }else{
        sessionStorage.setItem("one_more_before_referrer", one_more_before_referrer) 
        var one_more_before_referrer = document.referrer
        sessionStorage.setItem("one_more_before_referrer", one_more_before_referrer)
      }
    }else{
      var one_more_before_referrer = document.referrer
      sessionStorage.setItem("one_more_before_referrer", one_more_before_referrer)
    }
    if(location.href == "http://3.113.81.197/" && (document.referrer == "" || document.referrer == "http://3.113.81.197/" )){
      var reload_index = $(function() {
        if (sessionStorage.getItem("counter") == null){
          sessionStorage.setItem("counter", 0);
        }else{}
        var counter = sessionStorage.getItem("counter")
        if (counter == 0){
          sessionStorage.setItem("counter", 1);
          setInterval(location.reload(), 1);
        }else{sessionStorage.setItem("counter", 0)
      }
      });
      reload_index
    }else{}
    if(location.href == "http://3.113.81.197/" && "http://3.113.81.197/" == document.referrer ){
      var referrer = document.referrer
      sessionStorage.setItem("now_referrer", referrer)
      if(sessionStorage.getItem("now_referrer") == sessionStorage.getItem("ones_more_before_referrer") ){
        if (sessionStorage.getItem("counter") != 1 ){
          sessionStorage.setItem("counter", 1)
          location.reload();
        }else{
          sessionStorage.setItem("counter", 0)
        }
      }else{
        sessionStorage.setItem("ones_more_before_referrer", ones_more_before_referrer) 
        var ones_more_before_referrer = document.referrer
        sessionStorage.setItem("ones_more_before_referrer", ones_more_before_referrer)
      }
    }else {
      var ones_more_before_referrer = document.referrer
      sessionStorage.setItem("ones_more_before_referrer", ones_more_before_referrer)
    }

    if(  location.href == "http://3.113.81.197/" && "http://3.113.81.197/" != document.referrer  ){
      var referrer = document.referrer
      sessionStorage.setItem("referrer", referrer)
      if (sessionStorage.getItem("one_more_before_referrer") == sessionStorage.getItem("referrer") ) {
        location.reload();
      }else{
        sessionStorage.setItem("one_more_before_referrer", one_more_before_referrer) 
        var one_more_before_referrer = document.referrer
        sessionStorage.setItem("one_more_before_referrer", one_more_before_referrer)
      }
    }else{
      var one_more_before_referrer = document.referrer
      sessionStorage.setItem("one_more_before_referrer", one_more_before_referrer)
    }

    if(location.href == "http://3.113.81.197/" && (document.referrer == "" || document.referrer == "http://3.113.81.197/" )){
      var reload_index = $(function() {
        if (sessionStorage.getItem("counter") == null){
          sessionStorage.setItem("counter", 0);
        }else{}
        var counter = sessionStorage.getItem("counter")
        if (counter == 0){
          sessionStorage.setItem("counter", 1);
          setInterval(location.reload(), 1);
        }else{sessionStorage.setItem("counter", 0)
      }
      });
      reload_index
    }else{}
  });

  $(".btn-square-pop-half-delete").on('click', function(){
    if(window.confirm("データを削除しますがよろしいですか？")) {
        location.href = $(this).attr('href');
    } else {
        return false;
    }
  })
})
})