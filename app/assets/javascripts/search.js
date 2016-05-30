(function($) {
  $(document).ready(function(){
    $("#filter").keyup(function(){
      var filter = $(this).val();

      $(".searchable").each(function(){
        if ($(this).text().search(new RegExp(filter, "i")) < 0) {
          $(this).fadeOut();
        } else {
          $(this).show();
        }
      });
    });
  });
})(jQuery);
