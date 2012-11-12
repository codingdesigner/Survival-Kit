/*global jQuery */
/*!
* Crawl the elements page and show example source code
*/
(function($){
  $('div.element .markup').wrap('<div class="example">').each(function(){
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
  if($sectionNav = $('nav.section-nav').append('<ul class="sub-nav">').find('.sub-nav')) {
    $('.element-group').each(function(index) {
      $sectionNav
        .append('<li>' + $(this)
        .find('.section-title')
        .text().trim() + '</li>');
      $thisLI = $sectionNav
        .find('li')
        .last();
      $thisUL = $thisLI
        .append('<ul>')
        .find('ul')
        .last();
      $(this)
        .find('div.element')
        .each(function(index) {
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
  $('div.element').find('.element-title').append('<a href="#" class="fold-article fold-article-close" data-label="close">close</a>');
  $('.fold-article').toggle(
    function() {
      $(this).parents('.element').addClass('closed');
      $(this).parent().siblings().slideUp();
      $(this)
        .attr('data-label', 'open')
        .html('open')
        .removeClass('fold-article-close')
        .addClass('fold-article-open');
    },
    function() {
      $(this).parents('.element').removeClass('closed');
      $(this).parent().siblings().slideDown();
      $(this)
        .attr('data-label', 'close')
        .html('close')
        .removeClass('fold-article-open')
        .addClass('fold-article-close');
    }
  );
  // element groups
  $('.section-title').append('<a href="#" class="fold-section fold-section-close" data-label="fold section">close</a>');
  $('.fold-section').toggle(
    function() {
      $(this)
        .attr('data-label', 'open')
        .html('open')
        .removeClass('fold-section-close').addClass('fold-section-open')
        .parent().siblings('.element').addClass('closed')
        .children(':not(.element-title)').slideUp().end()
        .find('.element-title').find('.fold-article-close')
          .removeClass('fold-article-close')
          .addClass('fold-article-open')
          .attr('data-label', 'open')
          .html('open')
        ;
    },
    function() {
      $(this)
        .attr('data-label', 'close')
        .html('close')
        .removeClass('fold-section-open').addClass('fold-section-close')
        .parent().siblings('.element').removeClass('closed')
        .children().slideDown().end()
        .find('.element-title').find('.fold-article-open')
          .removeClass('fold-article-open')
          .addClass('fold-article-close')
          .attr('data-label', 'close')
          .html('close')
        ;
    }
  );
})(jQuery);


/*!
* back to top links
*/
(function($){
  $('div.element')
    .find('.element-title')
    .append('<a href="#" class="back-to-top" data-label="top">top</a>');
  $('.section-title')
    .append('<a href="#" class="back-to-top" data-label="top">top</a>');
})(jQuery);


/*!
* Side Panel Menu
*/
(function($){
  var jPM = $.jPanelMenu();
  jPM.on();
})(jQuery);
