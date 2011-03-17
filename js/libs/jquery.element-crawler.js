(function($){
  console.log('crawler');
  
  $('.crawl').each(function(){
    console.log($(this));
    console.log(this.styles);
    $(this).find('aside.code textarea.markup').html($(this).find('.content').html());
    
    // $(this).find('aside.code textarea.css').html($(this).find('.content').css());
  });


})(jQuery);