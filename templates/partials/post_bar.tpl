<div class="inline-block col-xs-12">

	<small class="topic-stats">
		<span>[[global:posts]]</span>
		<strong><span component="topic/post-count" class="human-readable-number" title="{postcount}">{postcount}</span></strong> |
		<span>[[global:views]]</span>
		<strong><span class="human-readable-number" title="{viewcount}">{viewcount}</span></strong>
	</small>
	<div class="topic-main-buttons pull-right inline-block">
		<div class="loading-indicator" done="0" style="display:none;">
			<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
		</div>
	
		<!-- IMPORT partials/topic/reply-button.tpl -->

	</div>
</div>
<hr>
<div class="col-xs-12 well inline-block post-bar-well pull-right post-bar bottom-post-bar">
	<span class="browsing-users hidden">
		<span class="hidden-xs">[[category:browsing]]</span>
		<div component="topic/browsing/list" class="thread_active_users active-users inline-block"></div>
		<small class="hidden">
			<i class="fa fa-users"></i> <span component="topic/browsing/count" class="user-count"></span>
		</small>
	</span>
</div>


<div style="clear:both;"></div>