/*
 * This is a manifest file that'll automatically include all the stylesheets available in this directory
 * and any sub-directories. You're free to add application-wide styles to this file and they'll appear at
 * the top of the compiled file, but it's generally better to create a new file per style scope.
 *= require_self
 *= require_tree
*/

(function(){

  if($('time').length >= 1) {
    date = $('time').html(), elem = date.split('/'), day = '<span>' + elem[0] + '</span>', month = '<span>' + elem[1] + '</span>';
    $('time').html(day + month);
  };

}).call(this);
