(function(){

  date = $('time').html(), elem = date.split('/'), day = elem[0], month = elem[1], year = elem[2];
  if($('time').length >= 1) {
    $('time').html('<span>' + day + '</span>' + '<span>' + month + '</span>' + '<span>' + year + '</span>');
  }

}).call(this);
