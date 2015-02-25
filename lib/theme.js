(function(module) {
	"use strict";

	var templates = module.parent.require('templates.js');
	var moment = require('./moment.min.js');

	var Theme = {};

	Theme.defineWidgetAreas = function(areas, callback) {
		areas = areas.concat([
			{
				'name': 'MOTD',
				'template': 'home.tpl',
				'location': 'motd'
			},
			{
				'name': 'Homepage Footer',
				'template': 'categories.tpl',
				'location': 'footer'
			},
			{
				'name': 'Category Sidebar',
				'template': 'category.tpl',
				'location': 'sidebar'
			},
			{
				'name': 'Categories Sidebar',
				'template': 'categories.tpl',
				'location': 'sidebar'
			},
			{
				'name': 'Topic Footer',
				'template': 'topic.tpl',
				'location': 'footer'
			},
			{
				'name': 'Home Center',
				'template': 'categories.tpl',
				'location': 'homecenter'
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
			if (timestamp.diff(moment(), 'days') == 0) date = "[Hoy]";
			if (timestamp.diff(moment(), 'days') == -1) date = "[Ayer]";
			return moment(timestamp).format(date + ", HH:mm[h]");
		});
		
		templates.registerHelper('humanReadableDateLast', function(data) {
			var timestamp = moment(data.lastposttime),	date = "DD/MM/YYYY";
			if (timestamp.diff(moment(), 'days') == 0) date = "[Hoy]";
			if (timestamp.diff(moment(), 'days') == -1) date = "[Ayer]";
			return moment(timestamp).format(date + ", HH:mm[h]");
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
		
		

		callback();
	};

	module.exports = Theme;

}(module));
