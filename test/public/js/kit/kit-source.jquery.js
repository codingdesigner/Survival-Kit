/*global jQuery */
/*!
* Crawl the elements page and show example source code
*/
(function($){
  $('article.element .markup').wrap('<div class="example">');
  $('article.element .markup').each(function(){
    var thisHTML = $(this).html().replace('</textarea>', '&lt;/textarea&gt;');
    $(this).after('<div class="show-source"><div class="show-hide">show source</div><textarea class="show-source-textarea">'+ thisHTML +'</textarea></div>');
    $(this).find('+ .show-source textarea.show-source-textarea').height($(this).height()).css('min-height', '100px').hide();
    $(this).find('+ .show-source .show-hide').toggle(function(){
      $(this).html('hide source');
      $(this).find('+ textarea.show-source-textarea').slideDown();
    }, function(){
      $(this).html('show source');
      $(this).find('+ textarea.show-source-textarea').slideUp();
    });
  });
})(jQuery);

/*!
* Create submenus based on the available sections
*/
(function($){
  if($sectionNav = $('nav.section-nav')) {
    $sectionNav.append('<h3>Jump to a section</h3>');
    $('.element-group').each(function(index) {
      $sectionNav.append('<h4>' + $(this).find('.section-title').text() + '</h4>');
      $thisUL = $sectionNav.append('<ul>').find('ul').last();
      $(this).find('article.element').each(function(index) {
        $thisID = $(this).attr('id');
        $thisUL.append('<li><a href="#' + $thisID + '">' + $thisID + '</a></li>')
      });
    });
  }
})(jQuery);
