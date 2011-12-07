(function(){

  if($('time').length >= 1) {
    date = $('time').html(), elem = date.split('/'), day = '<span>' + elem[0] + '</span>', month = '<span>' + elem[1] + '</span>';
    $('time').html(day + month);
  };

  $('aside img').hover(
    function(){
      $(this).after('<span>Hide phot</span>');
    },
    function() {
      $(this).next('span').remove();
    }
  );

}).call(this);
