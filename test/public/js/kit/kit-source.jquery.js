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
    $sectionNav.append('<h3>Jump to a section</h3>')
      .append('<div class="section-menus"></div>')
      .find('h3').toggle(
        function(){
          $(this).siblings().slideDown();
        },
        function(){
          $(this).siblings().slideUp();
        }
      );
    $sectionMenus = $sectionNav.find('.section-menus').hide();
    $('.element-group').each(function(index) {
      $sectionMenus.append('<h4>' + $(this).find('.section-title').text().trim() + ': </h4>');
      $thisUL = $sectionMenus.append('<ul>').find('ul').last();
      $(this).find('article.element').each(function(index) {
        $thisID = $(this).attr('id');
        $thisUL.append('<li><a href="#' + $thisID + '">' + $thisID + '</a></li>');
      });
    });
  }
})(jQuery);


/*!
* Collapse markup sections
*/
(function($){
  $('article.element').find('.element-title').append('<a href="#" class="fold-article fold-article-open">☒</a>');
  $('.fold-article-close').toggle(
    function() {
      $(this).parents('.element').addClass('closed');
      $(this).parent().siblings().slideUp();
      $(this).html('☑').removeClass('fold-article-close').addClass('fold-article-open');
    },
    function() {
      $(this).parents('.element').removeClass('closed');
      $(this).parent().siblings().slideDown();
      $(this).html('☒').removeClass('fold-article-open').addClass('fold-article-close');
    }
  );
  $('.fold-article-open').toggle(
    function() {
      $(this).parents('.element').removeClass('closed');
      $(this).parent().siblings().slideDown();
      $(this).html('☒').removeClass('fold-article-open').addClass('fold-article-close');
    },
    function() {
      $(this).parents('.element').addClass('closed');
      $(this).parent().siblings().slideUp();
      $(this).html('☑').removeClass('fold-article-close').addClass('fold-article-open');
    }
  );
  // element groups
  $('.section-title').append('<a href="#" class="fold-section fold-section-close">☒</a>');
  $('.fold-section').toggle(
    function() {
      $(this).parent().siblings('.element').addClass('closed').children(':not(.element-title)').slideUp().end().find('.element-title').find('.fold-article').html('☑');
      $(this).html('☑').removeClass('fold-section-close').addClass('fold-section-open');
    },
    function() {
      $(this).parent().siblings('.element').removeClass('closed').children().slideDown().end().find('.element-title').find('.fold-article').html('☒');
      $(this).html('☒').removeClass('fold-section-open').addClass('fold-section-close');
    }
  );
})(jQuery);
