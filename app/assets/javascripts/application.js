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

});

