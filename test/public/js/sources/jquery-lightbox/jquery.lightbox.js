/**
 * jQuery Lightbox
 * @author Warren Krewenki
 *
 * This package is distributed under the BSD license.
 * For full license information, see LICENSE.TXT
 *
 * Based on Lightbox 2 by Lokesh Dhakar (http://www.huddletogether.com/projects/lightbox2/)
 *
 *
 **/

(function($) {
	$.fn.lightbox = function(options) {
		// build main options
		var opts = $.extend({}, $.fn.lightbox.defaults, options);
        
		$(window).resize(resizeOverlayToFitWindow);

		return $(this).live("click",function(){
			// initialize the lightbox
			initialize();
			showLightbox(this);
			return false;
		});
		
		/*
		# Initialize the lightbox by creating our html and reading some image data
		# This method is called by the constructor after any click events trigger it
		# You will never call it by itself, to my knowledge.
		*/
		function initialize() {
			$('#overlay, #lightbox').remove();
			opts.inprogress = false;

			// if jsonData, build the imageArray from data provided in JSON format
			if (opts.jsonData && opts.jsonData.length > 0) {
				var parser = opts.jsonDataParser ? opts.jsonDataParser : $.fn.lightbox.parseJsonData;                
				opts.imageArray = [];
				opts.imageArray = parser(opts.jsonData);
			}
    
			var outerImage = '<div id="outerImageContainer"><div id="imageContainer"><iframe id="lightboxIframe"></iframe><img id="lightboxImage" /><div id="hoverNav"><a href="javascript://" title="' + opts.strings.prevLinkTitle + '" id="prevLink"></a><a href="javascript://" id="nextLink" title="' + opts.strings.nextLinkTitle + '"></a></div><div id="loading"><a href="javascript://" id="loadingLink"><img src="'+opts.fileLoadingImage+'"></a></div></div></div>';
			var imageData = '<div id="imageDataContainer" class="clearfix"><div id="imageData"><div id="imageDetails"><span id="caption"></span><span id="numberDisplay"></span></div><div id="bottomNav">';

			if (opts.displayHelp) {
				imageData += '<span id="helpDisplay">' + opts.strings.help + '</span>';
			}

			imageData += '<a href="javascript://" id="bottomNavClose" title="' + opts.strings.closeTitle + '"><img src="'+opts.fileBottomNavCloseImage+'"></a></div></div></div>';

			var string;

			if (opts.navbarOnTop) {
				string = '<div id="overlay"></div><div id="lightbox">' + imageData + outerImage + '</div>';
				$("body").append(string);
				$("#imageDataContainer").addClass('ontop');
			} else {
				string = '<div id="overlay"></div><div id="lightbox">' + outerImage + imageData + '</div>';
				$("body").append(string);
			}

			$("#overlay, #lightbox").click(function(){ end(); }).hide();
			$("#loadingLink, #bottomNavClose").click(function(){ end(); return false;});
			$('#outerImageContainer').width(opts.widthCurrent).height(opts.heightCurrent);
			$('#imageDataContainer').width(opts.widthCurrent);

			if (!opts.imageClickClose) {
				$("#lightboxImage").click(function(){ return false; });
				$("#hoverNav").click(function(){ return false; });
			}
			
			return true;
		};

		/*
		# Get the document and window width/heigh
		#
		# Examples
		#
		#	getPageSize()
		#	# => [1024,768,1024,768]
		#
		# Returns a numerically indexed array of document width/height and window width/height
		*/
		function getPageSize() {
			var jqueryPageSize = new Array($(document).width(),$(document).height(), $(window).width(), $(window).height());
			return jqueryPageSize;
		};
	    
		function getPageScroll() {
			var xScroll, yScroll;

			if (self.pageYOffset) {
				yScroll = self.pageYOffset;
				xScroll = self.pageXOffset;
			} else if (document.documentElement && document.documentElement.scrollTop){  // Explorer 6 Strict
				yScroll = document.documentElement.scrollTop;
				xScroll = document.documentElement.scrollLeft;
			} else if (document.body) {// all other Explorers
				yScroll = document.body.scrollTop;
				xScroll = document.body.scrollLeft;
			}

			var arrayPageScroll = new Array(xScroll,yScroll);
			return arrayPageScroll;
		};

		/*
		# Pause execution for a length of time
		#
		# ms - Number of milliseconds to pause execution
		#
		# Examples
		#
		#	pause(500)
		#	# => true
		# This runs an ugly loop until the execution time has passed
		# It is a horrible, horrible method and I wish to dispense with it, maybe via timeouts or something.
		# Really, this thing is nasty.  I think it had a really bad childhood or something.  I mean, it is
		# incredibly cruel to your browser, and to my self esteem. I didn't want to write it. I didn't want to include
		# it in my library, what with it's sexy overlay and whatnot, but here it is 4 years later and this thing lives on.
		# Please don't upset it, i've been told it will eat your dreams.
		*/
		function pause(ms) {
			var date = new Date();
			var curDate = null;
			do{curDate = new Date();}
			while(curDate - date < ms);
		};
	    

		/*
		# Deploy the sexy overlay and display the lightbox
		#
		# imageObject - the jQuery object passed via the click event in the constructor
		#
		# Examples
		#
		#	showLightbox($('#CheesusCrust'))
		#
		# Returns a boolean true, because it's got nothing else to return. It should give visual feedback when run
		*/
		function showLightbox(imageObject) {
			/**
			* select, embed and object tags render over the lightbox in some browsers
			* Right now, the best way to fix it is to hide them, but that can trigger reloading of some flash content
			* I don't have a better fix for this right now, but I want ot leave this comment here so you and I both 
			* know that i'm aware of it, and I would love to fix it, if you have any suggestions.
			**/
			$("select, embed, object").hide();

			// Resize and display the sexy, sexy overlay.
			resizeOverlayToFitWindow();
			$("#overlay").hide().css({ opacity : opts.overlayOpacity }).fadeIn();
			imageNum = 0;

			// if data is not provided by jsonData parameter
			if (!opts.jsonData) {
				opts.imageArray = [];
				// if image is NOT part of a set..
				if ((!imageObject.rel || (imageObject.rel == '')) && !opts.allSet) {
					// add single image to Lightbox.imageArray
					opts.imageArray.push(new Array(imageObject.href, opts.displayTitle ? imageObject.title : ''));
				} else {
					// if image is part of a set..
					$("a").each(function() {
						if(this.href && (this.rel == imageObject.rel)) {
							opts.imageArray.push(new Array(this.href, opts.displayTitle ? this.title : ''));
						}
					});
				}
			}
	
			if (opts.imageArray.length > 1) {
				for (i = 0; i < opts.imageArray.length; i++) {
					for (j = opts.imageArray.length - 1; j > i; j--) {
						if (opts.imageArray[i][0] == opts.imageArray[j][0]) {
							opts.imageArray.splice(j, 1);
						}
					}
				}

				while (opts.imageArray[imageNum][0] != imageObject.href) { 
					imageNum++;
				}
			}

			// calculate top and left offset for the lightbox
			var arrayPageScroll = getPageScroll();
			var lightboxTop = arrayPageScroll[1] + ($(window).height() / 10);
			var lightboxLeft = arrayPageScroll[0];
			$('#lightbox').css({top: lightboxTop+'px', left: lightboxLeft+'px'}).show();

			if (!opts.slideNavBar) {
				$('#imageData').hide();
			}

			changeImage(imageNum);
		};
	    
		function changeImage(imageNum) {
			if (opts.inprogress == false) {
				opts.inprogress = true;

				// update global var
				opts.activeImage = imageNum;	

				// hide elements during transition
				$('#loading').show();
				$('#lightboxImage, #hoverNav, #prevLink, #nextLink').hide();

				// delay preloading image until navbar will slide up
				if (opts.slideNavBar) { 
					$('#imageDataContainer').hide();
					$('#imageData').hide();
				}
				doChangeImage();
			}
		};

		function doChangeImage() {
			imgPreloader = new Image();

			// once image is preloaded, resize image container
			imgPreloader.onload = function() {
				var newWidth = imgPreloader.width;
				var newHeight = imgPreloader.height;

				if (opts.scaleImages) {
					newWidth = parseInt(opts.xScale * newWidth);
					newHeight = parseInt(opts.yScale * newHeight);
				}

				if (opts.fitToScreen) {
					var arrayPageSize = getPageSize();
					var ratio;
					var initialPageWidth = arrayPageSize[2] - 2 * opts.borderSize;
					var initialPageHeight = arrayPageSize[3] - 200;

					var dI = initialPageWidth/initialPageHeight;
					var dP = imgPreloader.width/imgPreloader.height;

					if ((imgPreloader.height > initialPageHeight) || (imgPreloader.width > initialPageWidth)) {
						if (dI > dP) {
							newWidth = parseInt((initialPageHeight/imgPreloader.height) * imgPreloader.width);
							newHeight = initialPageHeight;
						} else {
							newHeight = parseInt((initialPageWidth/imgPreloader.width) * imgPreloader.height);
							newWidth = initialPageWidth;
						}
					}
				}

				$('#lightboxImage').
					attr('src', opts.imageArray[opts.activeImage][0]).
					width(newWidth).
					height(newHeight);

					resizeImageContainer(newWidth, newHeight);
				};

				imgPreloader.src = opts.imageArray[opts.activeImage][0];
			};

			function end() {
				disableKeyboardNav();
				$('#lightbox').hide();
				$('#overlay').fadeOut();
				$('select, object, embed').show();
			};

			function preloadNeighborImages() {
				if (opts.loopImages && opts.imageArray.length > 1) {
					preloadNextImage = new Image();
					preloadNextImage.src = opts.imageArray[(opts.activeImage == (opts.imageArray.length - 1)) ? 0 : opts.activeImage + 1][0];

					preloadPrevImage = new Image();
					preloadPrevImage.src = opts.imageArray[(opts.activeImage == 0) ? (opts.imageArray.length - 1) : opts.activeImage - 1][0];
				} else {
					if ((opts.imageArray.length - 1) > opts.activeImage) {
						preloadNextImage = new Image();
						preloadNextImage.src = opts.imageArray[opts.activeImage + 1][0];
					}
					if (opts.activeImage > 0) {
						preloadPrevImage = new Image();
						preloadPrevImage.src = opts.imageArray[opts.activeImage - 1][0];
					}
				}
			};

			function resizeImageContainer(imgWidth, imgHeight) {
				// get current width and height
				opts.widthCurrent = $("#outerImageContainer").outerWidth();
				opts.heightCurrent = $("#outerImageContainer").outerHeight();

				// get new width and height
				var widthNew = Math.max(350, imgWidth  + (opts.borderSize * 2));
				var heightNew = (imgHeight  + (opts.borderSize * 2));

				// calculate size difference between new and old image, and resize if necessary
				wDiff = opts.widthCurrent - widthNew;
				hDiff = opts.heightCurrent - heightNew;

				$('#imageDataContainer').animate({width: widthNew},opts.resizeSpeed,'linear');
				$('#outerImageContainer').animate({width: widthNew},opts.resizeSpeed,'linear', function() {
					$('#outerImageContainer').animate({height: heightNew},opts.resizeSpeed,'linear', function() {
						showImage();
					});
				});

				// if new and old image are same size and no scaling transition is necessary,
				// do a quick pause to prevent image flicker.
				if((hDiff == 0) && (wDiff == 0)) {
					if (jQuery.browser.msie) { 
						pause(250); 
					} else { 
						pause(100);
					}
				}

				$('#prevLink').height(imgHeight);
				$('#nextLink').height(imgHeight);
			};

			function showImage() {
				$('#loading').hide();
				$('#lightboxImage').fadeIn("fast");
				updateDetails();
				preloadNeighborImages();

				opts.inprogress = false;
			};

			function updateDetails() {
				$('#numberDisplay').html('');

				if (opts.imageArray[opts.activeImage][1]) {
					$('#caption').html(opts.imageArray[opts.activeImage][1]).show();
				}

				// if image is part of set display 'Image x of x'
				if (opts.imageArray.length > 1) {
					var nav_html;

					nav_html = opts.strings.image + (opts.activeImage + 1) + opts.strings.of + opts.imageArray.length;

					if (opts.displayDownloadLink) {
						nav_html += "<a href='" + opts.imageArray[opts.activeImage][0] + "'>" + opts.strings.download + "</a>";
					}				

					if (!opts.disableNavbarLinks) {
						// display previous / next text links
						if ((opts.activeImage) > 0 || opts.loopImages) {
							nav_html = '<a title="' + opts.strings.prevLinkTitle + '" href="#" id="prevLinkText">' + opts.strings.prevLinkText + "</a>" + nav_html;
						}

						if (((opts.activeImage + 1) < opts.imageArray.length) || opts.loopImages) {
							nav_html += '<a title="' + opts.strings.nextLinkTitle + '" href="#" id="nextLinkText">' + opts.strings.nextLinkText + "</a>";
						}
					}

					$('#numberDisplay').html(nav_html).show();
				}

				if (opts.slideNavBar) {
					$("#imageData").slideDown(opts.navBarSlideSpeed);
				} else {
					$("#imageData").show();
				}

				resizeOverlayToFitWindow();
				updateNav();
			};

			/*
			# Resize the sexy overlay to fit the constraints of your current viewing environment
			# 
			# This should now happen whenever a window is resized, so you should always see a full overlay
			*/
			function resizeOverlayToFitWindow(){
				$('#overlay').css({width: $(document).width(), height: $(document).height()});
				//  ^^^^^^^ <- sexy!
			};

			function updateNav() {
				if (opts.imageArray.length > 1) {
					$('#hoverNav').show();

					// if loopImages is true, always show next and prev image buttons 
					if(opts.loopImages) {
						$('#prevLink,#prevLinkText').show().click(function() {
							changeImage((opts.activeImage == 0) ? (opts.imageArray.length - 1) : opts.activeImage - 1); 
							return false;
						});

						$('#nextLink,#nextLinkText').show().click(function() {
							changeImage((opts.activeImage == (opts.imageArray.length - 1)) ? 0 : opts.activeImage + 1); 
							return false;
						});

					} else {
						// if not first image in set, display prev image button
						if(opts.activeImage != 0) {
							$('#prevLink,#prevLinkText').show().click(function() {
								changeImage(opts.activeImage - 1); 
								return false;
							});
						}

						// if not last image in set, display next image button
						if(opts.activeImage != (opts.imageArray.length - 1)) {
							$('#nextLink,#nextLinkText').show().click(function() {
								changeImage(opts.activeImage +1); 
								return false;
							});
						}
					}

					enableKeyboardNav();
				}
			};

			function keyboardAction(e) {
				var o = e.data.opts;
				var keycode = e.keyCode;
				var escapeKey = 27;

				var key = String.fromCharCode(keycode).toLowerCase();

				// close lightbox
				if ((key == 'x') || (key == 'o') || (key == 'c') || (keycode == escapeKey)) { 
					end();

					// display previous image	
				} else if ((key == 'p') || (keycode == 37)) {  
					if(o.loopImages) {
						disableKeyboardNav();
						changeImage((o.activeImage == 0) ? (o.imageArray.length - 1) : o.activeImage - 1);
					} else if (o.activeImage != 0) {
						disableKeyboardNav();
						changeImage(o.activeImage - 1);
					}

					// display next image
				} else if ((key == 'n') || (keycode == 39)) { 
					if (opts.loopImages) {
						disableKeyboardNav();
						changeImage((o.activeImage == (o.imageArray.length - 1)) ? 0 : o.activeImage + 1);
					} else if (o.activeImage != (o.imageArray.length - 1)) {
						disableKeyboardNav();
						changeImage(o.activeImage + 1);
					}
				}
			};

			function enableKeyboardNav() {
				$(document).bind('keydown', {opts: opts}, keyboardAction);
			};

			function disableKeyboardNav() {
				$(document).unbind('keydown');
			};	    
		};

		$.fn.lightbox.parseJsonData = function(data) {
			var imageArray = [];

			$.each(data, function() {
				imageArray.push(new Array(this.url, this.title));
			});

			return imageArray;
		};

		$.fn.lightbox.defaults = {
			allSet: false,
			fileLoadingImage: 'images/loading.gif',
			fileBottomNavCloseImage: 'images/closelabel.gif',
			overlayOpacity: 0.6,
			borderSize: 10,
			imageArray: new Array,
			activeImage: null,
			inprogress: false,
			resizeSpeed: 350,
			widthCurrent: 250,
			heightCurrent: 250,
			scaleImages: false,
			xScale: 1,
			yScale: 1,
			displayTitle: true,
			navbarOnTop: false,
			displayDownloadLink: false,
			slideNavBar: false, 
			navBarSlideSpeed: 350,
			displayHelp: false,
			strings: {
				help: ' \u2190 / P - previous image\u00a0\u00a0\u00a0\u00a0\u2192 / N - next image\u00a0\u00a0\u00a0\u00a0ESC / X - close image gallery',
				prevLinkTitle: 'previous image',
				nextLinkTitle: 'next image',
				prevLinkText:  '&laquo; Previous',
				nextLinkText:  'Next &raquo;',
				closeTitle: 'close image gallery',
				image: 'Image ',
				of: ' of ',
				download: 'Download'
			},
			fitToScreen: false,		
			disableNavbarLinks: false,
			loopImages: false,
			imageClickClose: true,
			jsonData: null,
			jsonDataParser: null
		};	
})(jQuery);