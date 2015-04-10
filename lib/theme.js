(function(module) {
	"use strict";

	var templates = module.parent.require('templates.js');
	var moment = require('./moment.min.js');
	var topics = module.parent.require('./topics.js');

	var Theme = {};

	Theme.defineWidgetAreas = function(areas, callback) {
		areas = areas.concat([		
			{
				name: "MOTD",
				template: "categories.tpl",
				location: "motd"
			},
			{
				name: "Categories Sidebar",
				template: "categories.tpl",
				location: "sidebar"
			},
			{
				name: "Category Sidebar",
				template: "category.tpl",
				location: "sidebar"
			},
			{
				name: "Topic Sidebar",
				template: "topic.tpl",
				location: "sidebar"
			},
			{
				name: "Topic Footer",
				template: "topic.tpl",
				location: "footer"
			},
			{
				name: "Categories Center",
				template: "categories.tpl",
				location: "homecenter"
			},
			{
				name: "Categories Footer",
				template: "categories.tpl",
				location: "footer"
			}
		]);
		
		callback(null, areas);
	};

	Theme.appLoad = function(params, callback) {

		templates.registerHelper('postIndexPlusOne', function(data) {
			return data.index+1;
		});

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
		
		templates.registerHelper('humanReadableDateLast', function(data) {
			var timestamp = moment(data.lastposttime),	date = "DD/MM/YYYY";
			/*if (timestamp.diff(moment(), 'days') == 0) date = "[Hoy]";
			if (timestamp.diff(moment(), 'days') == -1) date = "[Ayer]";*/
			
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
			var lastPost = 0;
			//lastPost = topic.postcount;
			// Para poner el link al ultimo post leido, no tengo informacion sobre cual es el ultimo leido, asi que
			// se hace un "hack" para que se ejecute una funcion en el lado del usuario que me permite generar un enlace al ultimo
			// post leido
			return "/topic/"+topic.slug+"/" + lastPost + "\" onmouseover='app.setLinkToLastPost(this, \""+topic.slug+"\", "+topic.tid+")'";

		});
		

		callback();
	};

	module.exports = Theme;

}(module));