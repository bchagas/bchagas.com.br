(function(){

  if($('time').length >= 1) {
    date = $('time').html(), elem = date.split('/'), day = '<span>' + elem[0] + '</span>', month = '<span>' + elem[1] + '</span>', year = '<span>' + elem[1] + '</span>';

    $('header time').html(day + month + year);
    $('aside time').html(day + month);
  };

}).call(this);
