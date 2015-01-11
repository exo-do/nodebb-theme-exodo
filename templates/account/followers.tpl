
<!-- IMPORT partials/account_menu.tpl -->

<div class="users account">
	<div class="panel panel-default">
		<div class="panel-heading"><h3 class="panel-title">[[user:followers]]</h3></div>
		<!-- BEGIN followers -->
		<div class="panel-bodyusers-box">
			<a href="{relative_path}/user/{followers.userslug}"><img src="{followers.picture}" class="img-thumbnail"/></a>
			<div class="user-info">
				<a href="{relative_path}/user/{followers.userslug}">{followers.username}</a>
				<div title="reputation" class="reputation">
					<i class='fa fa-star'></i>
					<span class='formatted-number'>{followers.reputation}</span>
				</div>
				<div title="post count" class="post-count">
					<i class='fa fa-pencil'></i>
					<span class='formatted-number'>{followers.postcount}</span>
				</div>
			</div>
		</div>
		<!-- END followers -->
	</div>
	<div id="no-followers-notice" class="alert alert-warning hide">[[user:has_no_follower]]</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-variable="followersCount" value="{followersCount}" />
