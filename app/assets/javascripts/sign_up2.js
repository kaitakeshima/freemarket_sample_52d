$(function() {
  // e.preventDefault();
  $(".member-main__container__head").on("click", function() {
    var birthday = $(".select-wrap__default1 option:selected").text();
    $("li").append(birthday);
    debugger
    console.log("クリックされました")
  })
})