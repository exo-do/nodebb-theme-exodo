"use strict";

$(document).ready(function() {

	
	setupEditedByIcon();
	
	$(window).on('action:ajaxify.start', function() {
		if ($('.navbar .navbar-collapse').hasClass('in')) {
			$('.navbar-header button').click();
		}
	});
	

	function setupEditedByIcon() {
			function activateEditedTooltips() {
				$('[data-pid] [component="post/editor"]').each(function() {
					var el = $(this), icon;

					if (!el.attr('data-editor')) {
						return;
					}
					
					icon = el.parents('[data-pid]').find('.edit-icon');
					icon.prop('title', el.text()).tooltip('fixTitle').removeClass('hidden');
				});
			}

			$(window).on('action:posts.edited', function(ev, data) {
				var parent = $('[data-pid="' + data.post.pid + '"]'),
					icon = parent.find('.edit-icon'),
					el = parent.find('[component="post/editor"]');

				icon.prop('title', el.text()).tooltip('fixTitle').removeClass('hidden');
			});

			$(window).on('action:topic.loaded', activateEditedTooltips);
			$(window).on('action:posts.loaded', activateEditedTooltips);
	}
});