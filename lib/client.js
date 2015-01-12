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
		
		if (!$('#header-menu').length) {
			//No hay header en la pagina que estamos viendo
			return;
		}
		
		// loading animation
		var refreshTitle = app.refreshTitle,
			loadingBar = $('.loading-bar'),
			$header, $navbar;

		$(window).on('action:ajaxify.start', function (data) {
			loadingBar.fadeIn(0).removeClass('reset');
		});

		$(window).on('action:ajaxify.end', function (data) {
			$('.threadpagination').each(function() {
				buildTopicPagination($(this))
			});
		});

		$(document).on('scroll', function () {
			resizeHeader();
		});

		$(window).on('action:ajaxify.contentLoaded', function () {
			resizeHeader();
		});

		$(window).on('action:ajaxify.loadingTemplates', function () {
			loadingBar.css('width', '90%');
		});

		$(window).on('resize', function (data) {
			$header.addClass('notransition'); //Desactivamos las transitions para que redimensione sin animacion
			resizeHeader();
			$header.removeClass('notransition');
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
		 * Comprueba si hay que fijar la cabecera arriba o no y ajusta el width a la ventana
		 */
		function resizeHeader() {

			if (!$header) {
				$header = $('#header-menu');
				$navbar = $header.find('.navbar-collapse');
			}

			if ($(window).scrollTop() > $('#navbar-wrapper').offset().top) {
				$header.addClass('affix');
				$header.css('width', $(window).width())
			} else {
				$header.removeClass('affix');
				$header.css('width', $(document.body).width())
			}

			$navbar.css('width', $(document.body).width() - 30); //Tiene margin: 0 15px;

		}

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