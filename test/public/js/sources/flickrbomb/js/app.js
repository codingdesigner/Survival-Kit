(function($){
function demoLoad (){
	var currentValue = false,
	el = $('#demo-content span');
	el.focus(function(){
		currentValue = $(this).text();
	});
	el.keypress(function (e) {
		if (e.which == 13) {
			e.preventDefault();
			updateIMG($(this));
		}
	})
	el.focusout(function() {
		updateIMG($(this));
	});
	function updateIMG(argu) {
		if (argu.text() !== currentValue) {
			var keywords = $('#keywords').text();
			$('#demo-splash').html('<img src="flickr://' + keywords + '" width="940px" height="250px" style="display:none"><span>Loading New Demo Content</span>');
			startFlickrBomb();
		} else {
			return false;
		}
	}
}
demoLoad();
})(jQuery);