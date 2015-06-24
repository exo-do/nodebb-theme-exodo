<!-- IMPORT partials/account_menu.tpl -->

<div class="account<!-- IF isIgnored --> ignored<!-- ENDIF isIgnored -->" data-uid="{uid}" data-username="{username}">
	<div class="row">
		<div class="col-md-4 account-block">

			<div class="account-picture-block panel panel-default">
				<div class="panel-heading">
					<i class="account-online-status fa fa-circle status {status}" title="[[global:{status}]]"></i>
					<span class="account-username"> {username}</span>
				</div>
				<div class="panel-body">

					<!-- IF !banned -->
					<div class="text-center">
						<a href="{relative_path}/user/{userslug}">
							<img src="{picture}" class="user-profile-picture img-thumbnail" />
						</a>
					</div>
					<!-- ENDIF !banned -->

					<div>
						<div class="text-center">

							<!-- IF !isSelf -->
<!-- IF loggedIn -->							<br/>
							<!-- IF !config.disableChat -->
							<a id="chat-btn" href="#" class="btn btn-primary btn-sm">[[user:chat]]</a>
							<!-- ENDIF !config.disableChat -->
							<a id="follow-btn" href="#" class="btn btn-success btn-sm <!-- IF isFollowing -->hide<!-- ENDIF isFollowing -->">[[user:follow]]</a>
							<a id="unfollow-btn" href="#" class="btn btn-warning btn-sm <!-- IF !isFollowing -->hide<!-- ENDIF !isFollowing -->">[[user:unfollow]]</a>
							<!-- IF ignorePluginEnabled -->
							<p>
								</br>
								<a href="#" class="unignore btn btn-success btn-sm hide">[[ignored:unignore]]</a>
								<a href="#" class="ignore btn btn-danger btn-sm hide">[[ignored:ignore_user]]</a>
							</p>
							<!-- ENDIF ignorePluginEnabled -->
							<!-- ENDIF loggedIn -->
							<!-- ENDIF !isSelf -->
						</div>

						<!-- IF banned -->
						<div class="text-center"><!--[[user:banned]]-->
							<span class="label label-danger">Baneado / Eliminado</span>
						</div>
						<!-- ENDIF banned -->
						<hr/>
						<div class="text-center account-stats">
				
										<div class="inline-block text-center">
								<span class="human-readable-number" title="{reputation}">{reputation}</span>
								<span class="account-bio-label">[[global:reputation]]</span>
							</div>

							<div class="inline-block text-center">
								<span class="human-readable-number" title="{postcount}">{postcount}</span>
								<span class="account-bio-label">[[global:posts]]</span>
							</div>

							<div class="inline-block text-center">
								<span class="human-readable-number" title="{profileviews}">{profileviews}</span>
								<span class="account-bio-label">[[user:profile_views]]</span>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="panel panel-default">
				<div class="panel-body text-center">

					<!-- IF email -->
					<span class="account-bio-label">[[user:email]]</span>
					<span class="account-bio-value"><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</span>
					<!-- ENDIF email -->

					<!-- IF fullname -->
					<span class="account-bio-label">[[user:fullname]]</span>
					<span class="account-bio-value">{fullname}</span>
					<!-- ENDIF fullname -->

					<!-- IF websiteName -->
					<span class="account-bio-label">[[user:website]]</span>
					<span class="account-bio-value"><a href="{website}">{websiteName}</a></span>
					<!-- ENDIF websiteName -->

					<!-- IF location -->
					<span class="account-bio-label">[[user:location]]</span>
					<span class="account-bio-value">{location}</span>
					<!-- ENDIF location -->

					<!-- IF age -->
					<span class="account-bio-label">[[user:age]]</span>
					<span class="account-bio-value">{age}</span>
					<!-- ENDIF age -->


					<span class="account-bio-label">[[user:followers]]</span>
					<span class="human-readable-number account-bio-value" title="{followerCount}">{followerCount}</span>

					<span class="account-bio-label">[[user:following]]</span>
					<span class="human-readable-number account-bio-value" title="{followingCount}">{followingCount}</span>

					<span class="account-bio-label">[[user:joined]]</span>
					<span class="timeago account-bio-value" title="{joindate}"></span>

					<span class="account-bio-label">[[user:lastonline]]</span>
					<span class="timeago account-bio-value" title="{lastonline}"></span>

					<!-- IF !disableSignatures -->
					<!-- IF signature -->
					<hr/>
					<span class="account-bio-label">[[user:signature]]</span>
					<div class="post-signature">
						<span id='signature'>{signature}</span>
					</div>
					<!-- ENDIF signature -->
					<!-- ENDIF !disableSignatures -->
				</div>
			</div>

			<!-- IF groups.length -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">[[groups:groups]]</h3>
				</div>
				<div class="panel-body">
					<!-- BEGIN groups -->
					<a href="{relative_path}/groups/{groups.slug}"><span class="label group-label inline-block" style="background-color: {groups.labelColor};"><!-- IF groups.icon --><i class="fa {groups.icon}"></i> <!-- ENDIF groups.icon -->{groups.userTitle}</span></a>
					<!-- END groups -->
				</div>
			</div>
			<!-- ENDIF groups.length -->

			<!-- IF ips.length -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">[[global:recentips]]</h3>
				</div>
				<div class="panel-body">
					<!-- BEGIN ips -->
					<div>{ips.ip}</div>
					<!-- END ips -->
				</div>
			</div>
			<!-- ENDIF ips.length -->

		</div>


		<div class="col-md-8 user-recent-posts" data-nextstart="{nextStart}">
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-heading">
					<h3 class="panel-title">[[global:recentposts]]</h3>
				</div>
				<div class="panel-body">
					<!-- IF !posts.length -->
					<span>[[user:has_no_posts]]</span>
					<!-- ENDIF !posts.length -->
					<!-- BEGIN posts -->
					<div class="user-post clearfix" data-pid="{posts.pid}">
						<div class="content">
							<p>{posts.content}</p>
							<p class="fade-out"></p>
						</div>
						<small>
							<span class="pull-right post-preview-footer">
								[[global:posted_in_ago, <a href="{relative_path}/category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]] &bull;
								<a href="{relative_path}/topic/{posts.topic.slug}/{posts.index}">[[global:read_more]]</a>
							</span>
						</small>
					</div>
					<hr/>
					<!-- END posts -->
					<div class="loading-indicator text-center hidden">
						<i class="fa fa-refresh fa-spin"></i>
					</div>
				</div>
			</div>

		</div>
	</div>

	<br/>
	<div id="user-action-alert" class="alert alert-success hide"></div>

</div>

<!-- IMPORT partials/variables/account.tpl -->
<!-- IMPORT partials/variables/account/profile.tpl -->