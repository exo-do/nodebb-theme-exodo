<div class="inline-block">
	<span class="tags">
	<!-- BEGIN tags -->
	<a href="{relative_path}/tags/{tags.value}"><span class="tag-item" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.value}</span><span class="tag-topic-count">{tags.score}</span></a>
	<!-- END tags -->
	</span>

	<!-- IF tags.length -->
	<span>|</span>
	<!-- ENDIF tags.length -->

	<small class="topic-stats">
		<span>[[global:posts]]</span>
		<strong><span class="topic-post-count human-readable-number" title="{postcount}">{postcount}</span></strong> ·
		<span>[[global:views]]</span>
		<strong><span class="human-readable-number" title="{viewcount}">{viewcount}</span></strong>
	</small>
	<span class="browsing-users hidden">
		·
		<small><span>[[category:browsing]]</span></small>
		<div class="thread_active_users active-users inline-block"></div>
		<small class="hidden"><i class="fa fa-users"></i> <span class="user-count"></span></small>
	</span>
</div>

<div class="topic-main-buttons pull-right inline-block">
	<!-- IMPORT partials/thread_sort.tpl -->
	<!-- IMPORT partials/thread_tools.tpl -->
</div>