(function(module) {
	"use strict";

	var templates = module.parent.require('templates.js');

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

	Theme.filterTopicGet = function(topic, callback) {
		var post;
		for(var i=0; i<topic.posts.length; i++) {
			post = topic.posts[i];
			post['indexPlusOne'] = post.index+1;
		}

		callback(null, topic);
	};

	module.exports = Theme;

}(module));
