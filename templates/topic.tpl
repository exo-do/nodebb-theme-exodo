<div class="topic">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		
		<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted -->">[[topic:deleted_message]]</div>
		
		<div class="text-center topic-head-top">
			<h1><a component="post/header" class="topic-title" itemprop="name" title="{title}" href="/topic/{slug}"><i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i><span component="topic/title">{title}</span></a></h1>
		</div>
		
		<div class="topic-head-middle clearfix<!-- IF config.usePagination --> headup <!-- ENDIF config.usePagination -->">
			<div class="pull-left topic-buttons-right">
				<span class="btn-group">
				<!-- IMPORT partials/topic/reply-button.tpl -->
				</span>
				
				<span class="btn-group">
				<!-- IMPORT partials/thread_sort.tpl -->
				</span>
				
				<div class="btn-group">
					<button component="topic/follow" class="btn btn-exodo <!-- IF isFollowing -->hidden<!-- ENDIF isFollowing -->" type="button" title="[[topic:watch.title]]"><span class="hidden-xs"> [[topic:unwatch]]</span><span class="exright"><i class="fa fa-eye-slash"></i></span></button>
					<button component="topic/unfollow" class="btn btn-exodo <!-- IF !isFollowing -->hidden<!-- ENDIF !isFollowing -->" type="button" title="[[topic:unwatch.title]]"><span class="hidden-xs"> [[topic:watch]]</span><span class="exright"><i class="fa fa-eye"></i></span></button>
				</div>		
				
				<span class="btn-group">
				<!-- IMPORT partials/thread_tools.tpl -->
				</span>

			</div>
		</div>
		
		<div class="topic-head-pagination">
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
		
	
	<ul component="topic" id="post-container" class="posts" data-tid="{tid}">
		<!-- BEGIN posts -->
		<li component="post" class="post-row<!-- IF posts.deleted --> deleted<!-- ENDIF posts.deleted --><!-- IF posts.ignored --> ignored<!-- ENDIF posts.ignored --><!-- IF posts.isOP --> highlight-op<!-- ENDIF posts.isOP --><!-- IF posts.isFollow --> highlight-fw<!-- ENDIF posts.isFollow -->" <!-- IMPORT partials/data/topic.tpl -->>
			<a component="post/anchor" name="{posts.index}"></a>

			<meta itemprop="datePublished" content="{posts.relativeTime}">
			<meta itemprop="dateModified" content="{posts.relativeEditTime}">

			<div class="post-wrapper">
				<div class="post-header">
						<div class="nickname pull-left btn-group" title="<!-- IF posts.user.userslug -->[[topic:posted_by, {posts.user.username}]]<!-- ELSE -->[[topic:posted_by_guest]]<!-- ENDIF posts.user.userslug -->">
							<span class="avatar-mini">
								<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->"><img src="{posts.user.picture}" width=34 height=34 align="left" class="" itemprop="image"/>&nbsp;</a>
							</span>
							<h4 data-toggle="dropdown">
								<span class="username-field post-header-padding" href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}&nbsp;</span>
								<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]">&nbsp;</i>
							</h4>
						
							<ul class="dropdown-menu">
								<li><a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->"><i class="fa fa-user"></i> [[topic:profile]]</a></li>
								<!-- IF !posts.selfPost -->
								<!-- IF posts.user.userslug -->
								<!-- IF loggedIn -->
								<!-- IF !config.disableChat -->
								<li><a href="#" class="chat" component="post/chat"><i class="fa fa-comment"></i> [[topic:chat]]</a></li>
								<!-- ENDIF !config.disableChat -->
								<!-- ENDIF loggedIn -->
								<!-- ENDIF posts.user.userslug -->
								<!-- ENDIF !posts.selfPost -->

								<!-- IF !posts.selfPost -->
								<!-- IF loggedIn -->
								<li><a href="#" class="unignore hide"><i class="fa fa-eye"></i> [[ignored:unignore]]</a></li>
								<li><a href="#" class="ignore hide"><i class="fa fa-eye-slash"></i> [[ignored:ignore_user]]</a></li>
								<!-- ENDIF loggedIn -->
								<!-- ENDIF !posts.selfPost -->
							</ul>
						</div>
						
						<!--<div class="post-date pull-left hidden-xs">
							<span class="date"><i class="fa fa-clock-o"></i> {function.humanReadableDate}</span>
						</div>
						-->
						<div class="ribbon-wrapper-green"><div class="ribbon-green"><a href="/topic/{slug}/{function.postIndexPlusOne}">{posts.index}<!--{function.postIndexPlusOne}-->
							</a></div></div>
						<!--<div class="post-meta pull-right post-header-padding">
							<span class="post-index"><a href="/topic/{slug}/{function.postIndexPlusOne}">#{function.postIndexPlusOne}
							</a></span>
						</div>
						-->
				
				</div>

				<div class="post-details">
					<div class="userinfo hidden-xs">
						<!-- <div class="nickname btn-group">
							<h3 data-toggle="dropdown">
								<span href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}&nbsp;</span>
								<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
							</h3>
							<ul class="dropdown-menu">
								<li><a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->"><i class="fa fa-user"></i> [[topic:profile]]</a></li>
								<!-- IF !posts.selfPost -->
								<!-- IF posts.user.userslug -->
								<!-- IF loggedIn -->
								<!-- IF !config.disableChat -->
								<li><a href="#" class="chat" component="post/chat"><i class="fa fa-comment"></i> [[topic:chat]]</a></li>
								<!-- ENDIF !config.disableChat -->
								<!-- ENDIF loggedIn -->
								<!-- ENDIF posts.user.userslug -->
								<!-- ENDIF !posts.selfPost -->

								<!-- IF !posts.selfPost -->
								<!-- IF loggedIn -->
								<li><a href="#" class="unignore hide"><i class="fa fa-eye"></i> [[ignored:unignore]]</a></li>
								<li><a href="#" class="ignore hide"><i class="fa fa-eye-slash"></i> [[ignored:ignore_user]]</a></li>
								<!-- ENDIF loggedIn -->
								<!-- ENDIF !posts.selfPost -->
							</ul>
						</div>
						-->
						<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
							<!-- IF !posts.user.banned --><!--[[user:banned]] -->
							<img src="{posts.user.picture}" align="left" class="img-thumbnail" itemprop="image" />
							<br>
							<!-- IMPORT partials/topic/badge.tpl -->
							<!-- ELSE -->
							<span class="label label-danger">Baneado / Eliminado</span>
							<br><br>
							<!-- ENDIF !posts.user.banned -->
						</a>

						<dl class="userinfo-extra">
							<!-- IF posts.user.custom_profile_info.length -->
							<!-- BEGIN custom_profile_info -->
							<!-- IF posts.user.custom_profile_info.joindate -->
							<dt></dt> <dd>{posts.user.custom_profile_info.joindate}</dd>
							<!-- ENDIF posts.user.custom_profile_info.joindate -->
							<!-- IF posts.user.custom_profile_info.location -->
							<!--<dt></dt> <dd>{posts.user.custom_profile_info.location}</dd>-->
							<!-- ENDIF posts.user.custom_profile_info.location -->
							<!-- END custom_profile_info -->
							<!-- ENDIF posts.user.custom_profile_info.length -->
							
							
						</dl>
						
						<span class="userinfo-extra">
							<i class='fa fa-star'></i> <span component="user/reputation" data-reputation="{posts.user.reputation}" data-uid="{posts.uid}" class='formatted-number reputation'>{posts.user.reputation}</span>&nbsp;|&nbsp;
							<i class='fa fa-pencil'></i> <span class='formatted-number' component="user/postcount" data-uid="{posts.uid}" data-postcount="{posts.user.postcount}">{posts.user.postcount}</span>
						</span>
					</div>

					<div class="post-block">
						<a class="main-post avatar" href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
							<img itemprop="image" src="{posts.user.picture}" align="left" class="img-thumbnail" width=150 height=150 />
						</a>

						<!-- IF posts.ignored -->
						<div component="post/content" id="content_{posts.pid}" class="post-content" itemprop="text">[[ignored:ignored_post, {posts.user.username}]]</div>
						<div class="original-content hide" itemprop="text">{posts.originalContent}</div>
						<!-- ELSE -->
						<div component="post/content" id="content_{posts.pid}" class="post-content" itemprop="text">{posts.content}</div>
						<div class="original-content hide" itemprop="text"></div>
						<!-- ENDIF posts.ignored -->

						<div class="clearfix"></div>
						<div class="post-info">
							<span class="pull-right">
							[[global:posted_ago, <span class="timeago" title="{posts.relativeTime}"></span>]]
							<span component="post/editor" class="<!-- IF !posts.editor.username --> hidden<!-- ENDIF !posts.editor.username -->">| [[global:last_edited_by_ago, <strong><a href="{config.relative_path}/user/{posts.editor.userslug}">{posts.editor.username}</a></strong>, <span class="timeago" title="{posts.relativeEditTime}"></span>]]</span>
							</span>
						</div>

						<!-- IF posts.user.signature -->
						<div class="post-signature hidden-xs">{posts.user.signature}</div>
						<!-- ENDIF posts.user.signature -->
						
					</div>
				</div>

				<div class="topic-buttons clearfix">
					
					<div class="pull-left">
				
						<div class="dropup moderator-tools btn-group" component="post/tools">
							<button title="[[topic:tools]]" class="btn btn-sm btn-link btn-default" data-toggle="dropdown" href="#">
								<i class="fa fa-gear"></i></button>
									<ul class="dropdown-menu dropdown-menu-left" role="menu">
													<!-- IMPORT partials/topic/post-menu.tpl -->
									</ul>
						</div>
						<!-- IF !posts.selfPost -->
						<!-- IF posts.display_moderator_tools -->
							<span style="color:red; font-weight:bold;"> {posts.flags} <i class="fa fa-exclamation-triangle"></i></span>
						<!-- ENDIF posts.display_moderator_tools -->
						<!-- ENDIF !posts.selfPost -->
						
						
					</div>

					<!--					
					<div class="visible-xs">
						
											<div class="post-date pull-left">
												<span class="date"><i class="fa fa-clock-o"></i> {function.humanReadableDate}</span>
											</div>
					</div>	
					-->
						
					<div class="pull-right">
						<!-- IF loggedIn -->
						
						<div class="btn-group">
						<button component="post/favourite" class="btn btn-sm btn-link btn-default" role="menuitem" tabindex="-1" href="#" data-favourited="{posts.favourited}">
								<i component="post/favourite/on" class="fa fa-heart <!-- IF !posts.favourited -->hidden<!-- ENDIF !posts.favourited -->"></i>
								<i component="post/favourite/off" class="fa fa-heart-o <!-- IF posts.favourited -->hidden<!-- ENDIF posts.favourited -->"></i>
								<label class="favourite-text hidden-xs"><!--[[topic:favourite]]--></label>
								<span component="post/favourite-count" class="favouriteCount" data-favourites="{posts.reputation}">{posts.reputation}</span>&nbsp;
						</button>
						</div>
						
						<!-- IF !reputation:disabled -->
						<div class="btn-group reputation">
							<button component="post/upvote" class="upvote btn btn-sm btn-link <!-- IF posts.upvoted --> upvoted btn-primary <!-- ENDIF posts.upvoted -->">
								<i class="fa fa-chevron-up"></i>
							</button>
							<button component="post/vote-count" class="votes btn btn-sm btn-link" data-votes="{posts.votes}"> {posts.votes} </button>
							<!-- IF !downvote:disabled -->
							<button component="post/downvote" class="downvote btn btn-sm btn-link <!-- IF posts.downvoted --> downvoted btn-primary <!-- ENDIF posts.downvoted -->">
								<i class="fa fa-chevron-down"></i>
							</button>
							<!-- ENDIF !downvote:disabled -->
						</div>
						<!-- ENDIF !reputation:disabled -->

						<!-- IF privileges.topics:reply -->
						<div class="btn-group">
							<button component="post/quote" class="btn btn-sm btn-link" type="button"><i class="fa fa-quote-left"></i> <label class="hidden-xs"> [[topic:quote]] </label></button>
						</div>

						<div class="btn-group">
							<button component="post/reply" class="btn btn-sm btn-link" type="button"><i class="fa fa-reply"></i> <label class="hidden-xs"> [[topic:reply]]</label></button>
						</div>
						<!-- ENDIF privileges.topics:reply -->
						<!-- ENDIF loggedIn -->
					</div>
					
				</div>
			</div>
		</li>
		<!-- END posts -->
	</ul>
	
	<div class="well col-md-12 col-xs-12 pull-right post-bar bottom-post-bar <!-- IF unreplied -->hide<!-- ENDIF unreplied -->">
			<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<div class="topic-head-pagination fixfoot">
	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
	</div>
	<!-- IMPORT partials/breadcrumbs.tpl -->
	
	<!-- IMPORT partials/move_thread_modal.tpl -->
	<!-- IMPORT partials/fork_thread_modal.tpl -->
	<!-- IMPORT partials/move_post_modal.tpl -->
</div>

<div widget-area="footer" class="col-xs-12"></div>

<!-- IMPORT partials/noscript/paginator.tpl -->
<!-- IMPORT partials/variables/topic.tpl --> 
