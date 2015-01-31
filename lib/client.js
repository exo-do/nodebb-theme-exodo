$('document').ready(function () {
	(function () {
		//add template helpers
		registerTemplateHelpers();
		
		require(['moment'], function (moment) {
			templates.registerHelper('humanReadableDate', function(data) {
				var timestamp = moment(data.timestamp),	date = "DD/MM/YYYY";
				if (timestamp.diff(moment(), 'days') == 0) date = "[Hoy]";
				if (timestamp.diff(moment(), 'days') == -1) date = "[Ayer]";
				return moment(timestamp).format(date + ", HH:mm[h]");
			});
		});
		
		require(['moment'], function (moment) {
			templates.registerHelper('humanReadableDate', function(data) {
				var timestamp = moment(data.timestamp),	date = "DD/MM/YYYY";
				if (timestamp.diff(moment(), 'days') == 0) date = "[Hoy]";
				if (timestamp.diff(moment(), 'days') == -1) date = "[Ayer]";
				return moment(timestamp).format(date + ", HH:mm[h]");
			});
		});
		
		
		// loading animation
		var loadingBar = $('.loading-bar');

		$(window).on('action:ajaxify.start', function (data) {
			loadingBar.fadeIn(0).removeClass('reset');
		});

		$(window).on('action:ajaxify.end', function (data) {
			$('.threadpagination').each(function() {
//				buildTopicPagination($(this))
			});
		});

		$(window).on('action:ajaxify.loadingTemplates', function () {
			loadingBar.css('width', '90%');
		});

		app.refreshTitle = function (url) {
			loadingBar.css('width', '100%');
			setTimeout(function () {
				loadingBar.fadeOut(250);

				setTimeout(function () {
					loadingBar.addClass('reset').css('width', '0%');
				}, 250);
			}, 750);

			return refreshTitle(url);
		};
		
		/**
		 * Construye la paginación del hilo sobre el topic del topic-list que se le pasa
		 */
		function buildTopicPagination(thisObj) {
			var pagesCount = thisObj.data('pages'),
				topicUrl = thisObj.siblings("h3").children("a").attr("href"),
				toAppend = "";
			
			if (pagesCount != 1) {
				for (var i = 1; i <= pagesCount && i <= 3; i++) {
				    toAppend += "<span><a href='" + topicUrl + "?page=" + i + "'>" + i + "</a></span>";
				}
				
				if (pagesCount > 3) {
				    toAppend += "<span class='separator'>...</span><span><a href='" + topicUrl + "?page=" + pagesCount + "'>" + pagesCount + "</a></span>";
				}
			}
			
			thisObj.children('dd').append(toAppend);
		}
		
		function registerTemplateHelpers() {

			templates.registerHelper('postIndexPlusOne', function(data) {
				return data.index+1;
			});
			
		}
		
	}());
});