
<!-- IMPORT partials/account_menu.tpl -->

<div class="users account">
	<div class="panel panel-default">
			<div class="panel-heading"><h3 class="panel-title">[[user:followers]]</h3>
			</div>
	<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
		<!-- IMPORT partials/users_list.tpl -->
	</ul>

	<!-- IF !users.length -->
	<div class="alert alert-warning">[[user:has_no_follower]]</div>
	<!-- ENDIF !users.length -->
	</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-variable="followersCount" value="{followersCount}" />
