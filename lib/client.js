$('document').ready(function () {
	(function () {
		//add template helpers
		registerTemplateHelpers();

		// loading animation
		var refreshTitle = app.refreshTitle,
			loadingBar = $('.loading-bar'),
			$header, $navbar;

		$(window).on('action:ajaxify.start', function (data) {
			loadingBar.fadeIn(0).removeClass('reset');
		});

		$(window).on('action:ajaxify.end', function (data) {
			$header = $('#header-menu');
			$navbar = $header.find('.navbar-collapse');

			resizeHeader();
			$(document).on('scroll', function () {
				resizeHeader();
			});
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

			$header.affix('checkPosition');

			if ($header.is('.affix')) {
				$header.css('width', $(window).width())
			} else {
				$header.css('width', $(document.body).width())
			}

			$navbar.css('width', $(document.body).width() - 30); //Tiene margin: 0 15px;

		}

		function registerTemplateHelpers() {

			templates.registerHelper('postIndexPlusOne', function(data) {
				return data.index+1;
			});
			
		}

	}());
});
