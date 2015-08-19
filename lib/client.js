$('document').ready(function () {
	(function () {
		//add template helpers
		registerTemplateHelpers();
		require(['moment'], function (moment) {
			templates.registerHelper('humanReadableDate', function(data) {
				var timestamp = moment(data.timestamp),	date = "DD/MM/YYYY";
				/*if (timestamp.diff(moment(), 'days') == 0) date = "[Hoy]";
				if (timestamp.diff(moment(), 'days') == -1) date = "[Ayer]";*/
			
				moment.locale('en', {
				
				    calendar : {
				        lastDay : '[Ayer] HH:mm[h]',
				        sameDay : '[Hoy] HH:mm[h]',
						lastWeek: 'DD/MM/YYYY HH:mm[h]',
				        sameElse : 'DD/MM/YYYY HH:mm[h]'
					}
				});
				return moment(timestamp).calendar();
			});
		});
		
		require(['moment'], function (moment) {
			templates.registerHelper('humanReadableDateLast', function(data) {
				var timestamp = moment(data.lastposttime),	date = "DD/MM/YYYY";
				/*if (timestamp.diff(moment(), 'days') == 0) date = "[Hoy]";
				if (timestamp.diff(moment(), 'days') == -1) date = "[Ayer]"; */
			
				moment.locale('en', {
				
				    calendar : {
				        lastDay : '[Ayer] HH:mm',
				        sameDay : '[Hoy] HH:mm',
						lastWeek: 'DD/MM HH:mm',
				        sameElse : 'DD/MM HH:mm'
			    	}
				});
				return moment(timestamp).calendar();
			});
		});
		/*
		require(['moment'], function (moment) {
			templates.registerHelper('humanReadableDate', function(data) {
				var timestamp = moment(data.timestamp),	date = "DD/MM/YYYY";
				if (timestamp.diff(moment(), 'days') == 0) date = "[Hoy]";
				if (timestamp.diff(moment(), 'days') == -1) date = "[Ayer]";
				return moment(timestamp).format(date + ", HH:mm[h]");
			});
		});
		*/
		
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

		
		var refreshTitleOrig = app.refreshTitle;
		app.refreshTitle = function (url) {
			loadingBar.css('width', '100%');
			setTimeout(function () {
				loadingBar.fadeOut(250);

				setTimeout(function () {
					loadingBar.addClass('reset').css('width', '0%');
				}, 250);
			}, 750);

			return refreshTitleOrig(url);
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

			templates.registerHelper('categoryFilter', function(data) {
				// Recibimos las categorias y las que no nos interesen las eliminamos
				for(var i=0;data.categories && i<data.categories.length;i++)
				{
					if( data.categories[i].cid == 3 || data.categories[i].cid == 4 )
					{	// indicar las categorias cuyo id quueramos eliminar
						data.categories.splice(i, 1); i--;
					}
				}
				
				return true;
			});

			templates.registerHelper('goLastPostButton', function(topic) {
				// Recibimos las categorias y las que no nos interesen las eliminamos
				var lastPost = 0;
				lastPost = localStorage.getItem('topic:' + topic.tid + ':bookmark') || topic.postcount;
				return "/topic/"+topic.slug+"/" + lastPost;
			});
			
		}

		// Tema oscuro al cambiar de pagina
		$(window).on('action:ajaxify.contentLoaded', darkModeTest);
		$(window).on('action:topics.loaded', darkModeTest);
		$(window).on('action:categories.loaded', darkModeTest);
		$(window).on('action:posts.loaded', darkModeTest);
		$(window).on('action:composer.loaded', darkModeTest);

		// Elimna nombre de categoria en categorias
		$(window).on('action:ajaxify.contentLoaded', categoryNameRemove);
		$(window).on('action:topics.loaded', categoryNameRemove);
		$(window).on('action:categories.loaded', categoryNameRemove);

		//$(window).on('action:ajaxify.contentLoaded', tooltipOnWidget);
		//$(window).on('action:categories.loaded', tooltipOnWidget);
		
		//insertar tooltip en home
		/*function  tooltipOnWidget()
		{	
			$('.tooltipwidget a').tooltip({
					placement: 'left'
			});
	
			$('.category-icon a').tooltip({
					placement: 'left'
			});
		
		}
		*/
		
		function darkModeTest()
		{
			if(localStorage.darkMode && localStorage.darkMode === "1")
			{
				$("*").addClass("dark");
			}
			else
			{
				$("*").removeClass("dark");
			}
		}
		app.darModeTest = darkModeTest();

		function categoryNameRemove()
		{
			if(document.URL.indexOf("/category/")>-1)
			{
				$(".categoryNameOnTopicInfo").hide();
			}
		}

		app.setLinkToLastPost = function(link, topicSlug, tid)
		{
			// me genera un enlace al ultimo leido gracias al localstorage del usuario
			// y lo pone en el elemento "enlace"
			link = $(link);
			var lastPost = 0;
			lastPost = localStorage.getItem('topic:' + tid + ':bookmark') || 0;
			link.attr("href","/topic/"+topicSlug+"/" + lastPost);
		}
		
		
		
	}());
});