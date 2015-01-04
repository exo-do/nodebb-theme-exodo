$('document').ready(function() {
	(function() {
		// loading animation
		var refreshTitle = app.refreshTitle,
			loadingBar = $('.loading-bar');

		$(window).on('action:ajaxify.start', function(data) {
			loadingBar.fadeIn(0).removeClass('reset');
		});
		
		$(window).on('action:ajaxify.end', function(data) {
			$(document).on('scroll', function() {$('#header-menu').affix('checkPosition')});
		});

		$(window).on('action:ajaxify.loadingTemplates', function() {
			loadingBar.css('width', '90%');
		});

		app.refreshTitle = function(url) {
			loadingBar.css('width', '100%');
			setTimeout(function() {
				loadingBar.fadeOut(250);

				setTimeout(function() {
					loadingBar.addClass('reset').css('width', '0%');
				}, 250);
			}, 750);

			return refreshTitle(url);
		};
	}());
});