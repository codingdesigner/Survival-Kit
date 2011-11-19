/*
 *
 * Copyright (c) 2009 Heyday (labs [at] heyday [dot] co [dot] nz)
 * Licensed under the MIT (http://www.opensource.org/licenses/mit-license.php) license
 *
 */

/**
 *
 * @name     jquery.heyday.iswipe
 * @version  1.0
 * @author   Shane Garelja (shane [at] heyday [dot] co [dot] nz)
 * @requires jQuery
 *
 */

/*
 * Mobile Safari swipe plugin for jQuery
 *
 * Usage:
 *

// Horizontal mode
$('#MyDiv').swipe({
    swipeLeft: function() { doLeftStuff(); },
    swipeRight: function() { doRightStuff(); }
});

// Vertical mode
$('#MyDiv').swipe({
    swipeUp: function() { doUpStuff(); },
    swipeDown: function() { doDownStuff(); },
    mode: 'vertical'
});

// Horizontal & vertical (both) mode
$('#MyDiv').swipe({
    swipeLeft: function() { doLeftStuff(); },
    swipeRight: function() { doRightStuff(); }
    swipeUp: function() { doUpStuff(); },
    swipeDown: function() { doDownStuff(); },
    mode: 'both'
});

 *
 */
;(function($) {
	$.fn.swipe = function(options) {

		var defaults = {
			swipeLeft: function() {},
			swipeRight: function() {},
			swipeUp: function() {},
			swipeDown: function() {},
            mode: 'horizontal', // horizontal, vertical, both,
			threshold: { x: 100, y: 100 }
		};

		var options = $.extend(defaults, options);

		return this.each(function() {

            if (navigator.platform == 'iPad' || navigator.platform == 'iPhone' || navigator.platform == 'iPod') {

                var startPos = { x:0, y:0 },
                    endPos = { x:0, y:0 };

                function swipeStart(e) {
                    startPos.x = e.targetTouches[0].pageX;
                    startPos.y = e.targetTouches[0].pageY;
                    endPos.x = startPos.x
                    endPos.y = startPos.y
                }

                function swipe(e) {

                    endPos.x = e.targetTouches[0].pageX;
                    endPos.y = e.targetTouches[0].pageY;

                    var xMove = startPos.x - endPos.x,
                        yMove = startPos.y - endPos.y;
                    if (Math.abs(xMove) > Math.abs(yMove) && defaults.mode != 'vertical') {
                        e.preventDefault();
                    }
                    else if (Math.abs(xMove) < Math.abs(yMove) && defaults.mode != 'horizontal') {
                        e.preventDefault();
                    }

                }

                function swipeEnd(e) {

                    var xMove = startPos.x - endPos.x,
                        yMove = startPos.y - endPos.y;

                    // Horizontal swipe...
                    if (Math.abs(xMove) > Math.abs(yMove) && Math.abs(xMove) > defaults.threshold.x) {
                        if (xMove > 0) {
                            defaults.swipeLeft()
                        } else {
                            defaults.swipeRight();
                        }

                    // Vertical swipe...
                    } else if (Math.abs(xMove) < Math.abs(yMove) && Math.abs(yMove) > defaults.threshold.y) {
                        if (yMove > 0) {
                            defaults.swipeUp()
                        } else {
                            defaults.swipeDown();
                        }
                    }

                    return true;

                }

                this.addEventListener("touchstart", swipeStart, false);
                this.addEventListener("touchmove", swipe, false);
                this.addEventListener("touchend", swipeEnd, false);
                
            }

		});
	};
})(jQuery);

