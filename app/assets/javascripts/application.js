// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery

//= require rails-ujs

//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load',function(){
  $(function(){
    $("#input-price").on("keyup", function(){
      var input = $('#input-price').val();
      var fee = Math.floor(input * 0.1);
      var income = input - fee;
      $("#price-fee").html("¥ " + fee)
      $("#price-income").html("¥ " + income)
    });

    $("#select-category-a").change(function() {
      var select_val = $("#select-category-a").val();
      if( select_val > 0 ) {
        $('.sell-form-box__group__div__select-wrap-b').css('display', 'block');
      }
      else {
        $('.sell-form-box__group__div__select-wrap-b').css('display', 'none');
      }
    });

    $("#select-category-b").change(function() {
      var select_val = $("#select-category-b").val();
      if( select_val > 0 ) {
        $('.sell-form-box__group__div__select-wrap-c').css('display', 'block');
      }
      else {
        $('.sell-form-box__group__div__select-wrap-c').css('display', 'none');
      }
    });

    $("#select-category-c").change(function() {
      var select_val = $("#select-category-c").val();
      if( select_val > 0 ) {
        $('#select-size-wrap').css('display', 'block');
        $('#brand-suggest-wrap').css('display', 'block');
      }
      else {
        $('#select-size-wrap').css('display', 'none');
        $('#brand-suggest-wrap').css('display', 'none');
      }
    });

    $("#brand-input").on("keyup", function(){
      var input = $('#brand-input').val();
      if (input.length > 0) {
        $('#brand-suggest').css('display', 'block');
      }
      else {
        $('#brand-suggest').css('display', 'none');
      }
    });

    //画像ファイルプレビュー表示のイベント追加 fileを選択時に発火するイベントを登録
    $('form').on('change', 'input[type="file"]', function(e) {
      // 必要な変数を定義
      var file = e.target.files[0],
        reader = new FileReader(),
      $preview = $("#preview-img-figure-1");
      // 画像ファイル以外の場合は何もしない
      if(file.type.indexOf("image") < 0){
        return false;
      }
      // ファイル読み込みが完了した際のイベント登録
      reader.onload = (function(file) {
        return function(e) {
          //既存のプレビューを削除
          $preview.empty();
          // .prevewの領域の中にロードした画像を表示するimageタグを追加
          $preview.append($('<img>').attr({
            src: e.target.result,
            id: "preview-img-1",
            class: "items-container__items__list__item__figure--image",
            title: file.name
          }));
          $('#preview-img-container-1').css('display', 'block');
        };
      })(file);
      reader.readAsDataURL(file);
    });
  });
});
