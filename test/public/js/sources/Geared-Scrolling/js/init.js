/*global jQuery */

"use strict";

var syncColumn;

(function ($) {
	$(window).load(function () {
		syncColumn = $('.columnHolder').gearedscrolling();
	});
}(jQuery));