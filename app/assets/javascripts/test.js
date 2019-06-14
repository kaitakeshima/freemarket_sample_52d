$(function() {
  $('.slider').slick({
      speed: 800,
      asNavFor:'.thumb',
      arrows: false, 
  });
  $('.thumb').slick({
    asNavFor:'.slider',
    focusOnSelect: true,
    slidesToShow:5,
    slidesToScroll:1
  });

});