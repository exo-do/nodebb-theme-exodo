(function(module) {
	"use strict";

	var templates = module.parent.require('templates.js');
	var moment = require('moment');

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
				'template': 'home.tpl',
				'location': 'footer'
			},
			{
				'name': 'Category Sidebar',
				'template': 'category.tpl',
				'location': 'sidebar'
			},
			{
				'name': 'Topic Footer',
				'template': 'topic.tpl',
				'location': 'footer'
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

		callback();
	};

	module.exports = Theme;

}(module));
