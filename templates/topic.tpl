<div class="topic">
	<div class="topic-head">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted -->">[[topic:deleted_message]]</div>
		<div class="text-center topic-head-top hidden-xs">
			<h1><a component="post/header" class="topic-title" itemprop="name" title="{title}" href="/topic/{slug}"><i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i>{title}</a></h1>
		</div>
		
		<div class="text-center topic-head-top-mini visible-xs">
			<h1><a component="post/header" class="topic-title" itemprop="name" title="{title}" href="/topic/{slug}"><i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i>{title}</a></h1>
		</div>
		
		<div class="topic-head-middle clearfix<!-- IF config.usePagination --> headup <!-- ENDIF config.usePagination -->">
			<div class="pull-left topic-buttons-right">
				<span class="btn-group hidden-xs">
				<button component="topic/reply" class="btn btn-exodo<!-- IF !privileges.topics:reply --> disabled<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]<span>+</span></button>
				</span>
				<span class="btn-group visible-xs">
				<button component="topic/reply" class="btn btn-sm btn-default btn-exodin <!-- IF !privileges.topics:reply --> disabled<!-- ENDIF !privileges.topics:reply -->"><i class="fa fa-plus"></i></button>
				</span>
				
				<span class="btn-group">
				<!-- IMPORT partials/thread_sort.tpl -->
				</span>
				
				<span class="dropdown moderator-tools btn-group" component="post/tools">
				<!--<button class="btn btn-sm btn-default btn-exodin dropdown-toggle tool visible-xs" data-toggle="dropdown" type="button"><i class="fa fa-share-alt"></i></button>-->
				
				<button title="[[topic:tools]]" class="btn btn-exodo" data-toggle="dropdown" href="#"><i class="fa fa-gear"></i></button>
					<ul class="dropdown-menu dropdown-menu-right" role="menu">
						<!-- IMPORT partials/topic/post-menu.tpl -->
					</ul>
				</span>
				
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
		
	</div>
	
	<ul component="topic" id="post-container" class="posts" data-tid="{tid}">
		<!-- BEGIN posts -->
		<li class="post-row<!-- IF posts.deleted --> deleted<!-- ENDIF posts.deleted --><!-- IF posts.ignored --> ignored<!-- ENDIF posts.ignored --><!-- IF posts.isOP --> highlight-op<!-- ENDIF posts.isOP --><!-- IF posts.isFollow --> highlight-fw<!-- ENDIF posts.isFollow -->" <!-- IMPORT partials/data/topic.tpl -->>
			<a component="post/anchor" name="{posts.index}"></a>

			<meta itemprop="datePublished" content="{posts.relativeTime}">
			<meta itemprop="dateModified" content="{posts.relativeEditTime}">

			<div class="post-wrapper">
				<div class="post-header">
					<div class="pull-left visible-xs">
						<div class="" title="<!-- IF posts.user.userslug -->[[topic:posted_by, {posts.user.username}]]<!-- ELSE -->[[topic:posted_by_guest]]<!-- ENDIF posts.user.userslug -->">
									<a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
									<span class="inline avatarxs"><img class="" src="{posts.user.picture}" width=34 height=34 />&nbsp;</span>
									<span class="username-field-mini" href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}&nbsp;</span>
									</a>
									<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]">&nbsp;</i>
									
							
						</div>
	
					</div>
					
					<div class="post-header-padding">
					<div class="post-date pull-left hidden-xs">
						<span class="date"><i class="fa fa-clock-o"></i> {function.humanReadableDate}</span>
					</div>
					
					
					<div class="post-meta pull-right">
						<span class="post-index"><a href="/topic/{slug}/{function.postIndexPlusOne}">#{function.postIndexPlusOne}</a></span>
					</div>
					</div>
					
				</div>

				<div class="post-details">
					<div class="userinfo hidden-xs">
						<div class="nickname btn-group">
							<h3 data-toggle="dropdown">
								<span href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}&nbsp;</span>
								
								<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
								
								
							</h3>
							<ul class="dropdown-menu">
								<li><a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->"><i class="fa fa-user"></i> [[topic:profile]]</a></li>
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

						<a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
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
							<!-- IF posts.user.custom_profile_info.joindate --><dt>Fecha de ingreso:</dt> <dd>{posts.user.custom_profile_info.joindate}</dd><!-- ENDIF posts.user.custom_profile_info.joindate -->
							<!-- IF posts.user.custom_profile_info.location --><dt>Ubicación:</dt> <dd>{posts.user.custom_profile_info.location}</dd><!-- ENDIF posts.user.custom_profile_info.location -->
							<!-- END custom_profile_info -->
							<!-- ENDIF posts.user.custom_profile_info.length -->
							<!-- IF !reputation:disabled -->
							<dt>[[global:reputation]]:</dt> <dd> <span component="user/reputation" data-reputation="{posts.user.reputation}" data-uid="{posts.uid}" class='formatted-number reputation'>{posts.user.reputation}</span></dd>
							
							<!-- ENDIF !reputation:disabled -->
							<dt>[[global:posts]]:</dt> <dd><span class='formatted-number' component="user/postcount" data-uid="{posts.uid}" data-postcount="{posts.user.postcount}">{posts.user.postcount}</span></dd>
						</dl>

					</div>

					<div class="post-block">
						<a class="main-post avatar" href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
							<img itemprop="image" src="{posts.user.picture}" align="left" class="img-thumbnail" width=150 height=150 />
						</a>

						<!-- IF posts.ignored -->
						<div component="post/content" id="content_{posts.pid}" class="post-content" itemprop="text">[[ignored:ignored_post, {posts.user.username}]]</div>
						<div class="original-content hide" itemprop="text">{posts.originalContent}</div>
						<!-- ELSE -->
						<div component="post/content" id="content_{posts.pid}" class="post-content" itemprop="text">{posts.content}</div>
						<div class="original-content hide" itemprop="text"></div>
						<!-- ENDIF posts.ignored -->

						<div class="post-info">
							<!-- IF posts.editor.username -->
							<span>[[global:last_edited_by_ago, <strong><a href="{relative_path}/user/{posts.editor.userslug}">{posts.editor.username}</a></strong>, <span class="timeago" title="{posts.relativeEditTime}"></span>]]</span>
							<!-- ENDIF posts.editor.username -->
						</div>

						<!-- IF posts.user.signature -->
						<div class="post-signature hidden-xs">{posts.user.signature}</div>
						<!-- ENDIF posts.user.signature -->
						<div class="clearfix"></div>
					</div>
				</div>

				<div class="topic-buttons clearfix">
					
					<div class="pull-left hidden-xs">
						

						<!-- IF !posts.selfPost -->
						<div class="btn-group">
							<button component="post/flag" class="btn btn-sm btn-link" type="button" title="[[topic:flag_title]]"><i class="fa fa-exclamation-triangle">	<!-- IF posts.display_moderator_tools -->
							 <span style="color:red; font-weight:bold;"> {posts.flags}</span>
							<!-- ENDIF posts.display_moderator_tools --></i></button>
							
						</div>
						<!-- ENDIF !posts.selfPost -->
					</div>

										
					<div class="visible-xs">
						
											<div class="post-date pull-left">
												<span class="date"><i class="fa fa-clock-o"></i> {function.humanReadableDate}</span>
											</div>
											

											<!-- IF privileges.topics:reply -->
											
											<div class="btn-group pull-right">
												
												<button class="btn btn-sm btn-default btn-exodin dropdown-toggle" data-toggle="dropdown" type="button">
													<i class="fa fa-gear" title="Herramientas"></i>
														<span class="caret"></span>
												</button>
																	
												<ul class="dropdown-menu">
													
														<!-- IF posts.display_moderator_tools -->
														<li> <a component="post/edit" class="pointer" title="[[topic:edit]]"><i class="fa fa-pencil"></i> Editar</a></li>
														<!-- IF privileges.editable -->
														<li> <a component="post/delete" class="pointer" title="[[topic:delete]]"><i class="fa fa-trash-o"></i> Borrar</a></li>
														<li> <a component="post/purge" class="pointer <!-- IF !posts.deleted -->none<!-- ENDIF !posts.deleted -->" title="[[topic:purge]]"><i class="fa fa-eraser"></i> Purgar</a></li>
														<!-- ENDIF privileges.editable -->
														<!-- IF posts.display_move_tools -->
														<li> <a component="post/move" class="pointer move" title="[[topic:move]]"><i class="fa fa-arrows"></i> Mover</a></li>
														<!-- ENDIF posts.display_move_tools -->
												

														<!-- ENDIF posts.display_moderator_tools -->
														<!-- IF !posts.index -->
														<li><a component="topic/follow" class="pointer follow" title="[[topic:notify_me]]">
															<!-- IF isFollowing --><i class="fa fa-eye-slash">&nbsp;</i><span>[[topic:unwatch]]</span>
															<!-- ELSE --><i class="fa fa-eye">&nbsp;</i><span>[[topic:watch]]</span>
															<!-- ENDIF isFollowing -->
														</a></li>
														<!-- ENDIF !posts.index -->
														
														<!-- IF !posts.selfPost -->
														<li><a component="post/flag" class="pointer" title="[[topic:flag_title]]"><i class="fa fa-exclamation-triangle"> Reportar
																<!-- IF posts.display_moderator_tools -->
																<span style="color:red; font-weight:bold;"> {posts.flags}</span>
																<!-- ENDIF posts.display_moderator_tools -->
														</i></a></li>	
														<!-- ENDIF !posts.selfPost -->
												
												</ul>
												<button component="post/quote" class="btn btn-sm btn-default btn-exodin" type="button">
													<span><i class="fa fa-quote-left"></i></span>
												</button>
												<button component="post/reply" class="btn btn-sm btn-default btn-exodin" type="button">
													<span><i class="fa fa-reply"></i></span>
												</button>
											</div>
											
											<!-- ENDIF privileges.topics:reply -->
												
												
												
												
											


										
					</div>

					<div class="pull-right hidden-xs">
						<!-- IF loggedIn -->
						
						
						
						<div class="btn-group">
							<!-- IF !posts.index -->
							<button component="topic/follow" class="btn btn-sm btn-link btn-default <!-- IF isFollowing -->hidden<!-- ENDIF isFollowing -->" type="button" title="[[topic:watch.title]]"><i class="fa fa-eye"></i><label><span>[[topic:unwatch]]</span></label></button>
							<button component="topic/unfollow" class="btn btn-sm btn-link btn-default <!-- IF !isFollowing -->hidden<!-- ENDIF !isFollowing -->" type="button" title="[[topic:unwatch.title]]"><i class="fa fa-eye-slash"></i><label><span>[[topic:watch]]</span></label></button>
								
							<!-- ENDIF !posts.index -->
						</div>
						<!-- ENDIF loggedIn -->

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
							<button component="post/quote" class="btn btn-sm btn-link" type="button"><i class="fa fa-quote-left"></i> <label> [[topic:quote]] </label></button>
						</div>

						<div class="btn-group">
							<button component="post/reply" class="btn btn-sm btn-link" type="button"><i class="fa fa-reply"></i> <label> [[topic:reply]]</label></button>
						</div>
						<!-- ENDIF privileges.topics:reply -->
					</div>
					
				</div>
			</div>
		</li>

		<!-- IF !posts.index -->
		<li class="well post-bar <!-- IF unreplied -->hide<!-- ENDIF unreplied -->" data-index="{posts.index}">
			<!-- IMPORT partials/post_bar.tpl -->
		</li>
		<!-- ENDIF !posts.index -->
		<!-- END posts -->
	</ul>

	<div class="topic-foot">
		<div class="topic-head-middle clearfix <!-- IF config.usePagination --> headdown <!-- ENDIF config.usePagination -->">
			<div class="pull-left topic-buttons-right">
			
				<span class="btn-group hidden-xs">
					<button component="topic/reply" class="btn btn-exodo<!-- IF !privileges.topics:reply --> disabled<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]<span>+</span></button>
				</span>
				<span class="btn-group visible-xs">
				<button component="topic/reply" class="btn btn-group btn-sm btn-default btn-exodin <!-- IF !privileges.topics:reply --> disabled<!-- ENDIF !privileges.topics:reply -->"><i class="fa fa-plus"></i></button>
				</span>
				<!-- IMPORT partials/thread_sort.tpl -->
			</div>

		</div>
		<div class="topic-head-pagination fixfoot">
			<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
		
		<!-- IMPORT partials/breadcrumbs.tpl -->
		
	</div>

	<div class="post-bar bottom-post-bar <!-- IF unreplied -->hide<!-- ENDIF unreplied -->">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IMPORT partials/move_thread_modal.tpl -->
	<!-- IMPORT partials/fork_thread_modal.tpl -->
	<!-- IMPORT partials/move_post_modal.tpl -->
</div>

<div widget-area="footer" class="col-xs-12"></div>

<!-- IMPORT partials/noscript/paginator.tpl -->
<!-- IMPORT partials/variables/topic.tpl --> 

