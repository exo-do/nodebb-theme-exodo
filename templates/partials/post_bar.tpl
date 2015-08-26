<div class="inline-block col-xs-12 nocolpad">

	
	<div class="topic-main-buttons pull-left inline-block">
		
	
		<!-- IMPORT partials/topic/reply-button.tpl -->

		
	</div>
	
	<small class="topic-stats pull-right">
		<span>[[global:posts]]</span>
		<strong><span component="topic/post-count" class="human-readable-number" title="{postcount}">{postcount}</span></strong> |
		<span>[[global:views]]</span>
		<strong><span class="human-readable-number" title="{viewcount}">{viewcount}</span></strong>
	</small>
	<div class="loading-indicator pull-right" done="0" style="display:none;">
		<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
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