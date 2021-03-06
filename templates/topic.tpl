<input type="hidden" template-variable="topic_id" value="{tid}" />
<input type="hidden" template-variable="topic_slug" value="{slug}" />
<input type="hidden" template-variable="category_id" value="{category.cid}" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="pageCount" value="{pageCount}" />
<input type="hidden" template-variable="locked" template-type="boolean" value="{locked}" />
<input type="hidden" template-variable="deleted" template-type="boolean" value="{deleted}" />
<input type="hidden" template-variable="pinned" template-type="boolean" value="{pinned}" />
<input type="hidden" template-variable="topic_name" value="{title}" />
<input type="hidden" template-variable="postcount" value="{postcount}" />
<input type="hidden" template-variable="viewcount" value="{viewcount}" />
<input type="hidden" template-variable="isFollowing" value="{isFollowing}" />

<div class="topic">
	<div class="topic-head">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		<div class="text-center topic-head-top hidden-xs">
			<h1><a title="{title}" href="/topic/{slug}">{title}</a></h1>
		</div>
		
		<div class="text-center topic-head-top-mini visible-xs">
			<h1><a title="{title}" href="/topic/{slug}">{title}</a></h1>
		</div>
		
		<div class="topic-head-middle clearfix<!-- IF config.usePagination --> headup <!-- ENDIF config.usePagination -->">
			<div class="pull-left topic-buttons-right">
				<span class="btn-group hidden-xs">
				<button class="btn post_reply btn-exodo<!-- IF !privileges.topics:reply --> disabled<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]<span>+</span></button>
				</span>
				<span class="btn-group visible-xs">
				<button class="btn btn-sm btn-default btn-exodin post_reply<!-- IF !privileges.topics:reply --> disabled<!-- ENDIF !privileges.topics:reply -->"><i class="fa fa-plus"></i></button>
				</span>
				
				<span class="btn-group">
				<!-- IMPORT partials/thread_sort.tpl -->
				</span>
				
				<span class="dropdown share-dropdown btn-group">
				<button class="btn btn-exodo dropdown-toggle tool hidden-xs" data-toggle="dropdown" type="button"> [[topic:share]] <span><i class="fa fa-share-alt"></i></span>
				</button>
				<button class="btn btn-sm btn-default btn-exodin dropdown-toggle tool visible-xs" data-toggle="dropdown" type="button"><i class="fa fa-share-alt"></i></button>
				
				<!-- IMPORT partials/share_dropdown.tpl -->
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
	
	<ul id="post-container" class="posts" data-tid="{tid}">
		<!-- BEGIN posts -->
		<li class="post-row<!-- IF posts.deleted --> deleted<!-- ENDIF posts.deleted --><!-- IF posts.ignored --> ignored<!-- ENDIF posts.ignored --><!-- IF posts.isOP --> highlight-op<!-- ENDIF posts.isOP --><!-- IF posts.isFollow --> highlight-fw<!-- ENDIF posts.isFollow -->" data-pid="{posts.pid}" data-uid="{posts.uid}" data-username="{posts.user.username}" data-userslug="{posts.user.userslug}" data-index="{posts.index}" data-timestamp="{posts.timestamp}" data-votes="{posts.votes}" itemscope itemtype="http://schema.org/Comment">
			<a id="post_anchor_{posts.index}" name="{posts.index}"></a>

			<meta itemprop="datePublished" content="{posts.relativeTime}">
			<meta itemprop="dateModified" content="{posts.relativeEditTime}">

			<div class="post-wrapper">
				<div class="post-header">
					<div class="pull-left visible-xs">
						<div class="" title="<!-- IF posts.user.userslug -->[[topic:posted_by, {posts.user.username}]]<!-- ELSE -->[[topic:posted_by_guest]]<!-- ENDIF posts.user.userslug -->">
									<a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
									<span class="inline avatarxs"><img class="" src="{posts.user.picture}" width=34 height=34 />&nbsp;</span>
									<span class="username-field-mini"  itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}&nbsp;</span>
									</a>
									<i class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]">&nbsp;</i>
							
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
								<span class="username-field" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</span>
								<i class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
							</h3>
							<ul class="dropdown-menu">
								<li><a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->"><i class="fa fa-user"></i> [[topic:profile]]</a></li>
								<!-- IF !posts.selfPost -->
								<!-- IF posts.user.userslug -->
								<!-- IF loggedIn -->
								<!-- IF !config.disableChat -->
								<li><a href="#" class="chat"><i class="fa fa-comment"></i> [[topic:chat]]</a></li>
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
							<dt>[[global:reputation]]:</dt> <dd><span data-reputation="{posts.user.reputation}" data-uid="{posts.uid}" class='formatted-number reputation'>{posts.user.reputation}</span></dd>
							<!-- ENDIF !reputation:disabled -->
							<dt>[[global:posts]]:</dt> <dd><span class='formatted-number user_postcount_{posts.uid}'>{posts.user.postcount}</span></dd>
						</dl>

					</div>

					<div class="post-block">
						<a class="main-post avatar" href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
							<img itemprop="image" src="{posts.user.picture}" align="left" class="img-thumbnail" width=150 height=150 />
						</a>

						<!-- IF posts.ignored -->
						<div id="content_{posts.pid}" class="post-content" itemprop="text">[[ignored:ignored_post, {posts.user.username}]]</div>
						<div class="original-content hide" itemprop="text">{posts.originalContent}</div>
						<!-- ELSE -->
						<div id="content_{posts.pid}" class="post-content" itemprop="text">{posts.content}</div>
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
						<!-- IF posts.display_moderator_tools -->
						<div class="btn-group post-tools" id="dropdowntopic">
							<div class="dropdown">
								<button title="[[topic:tools]]" class="btn btn-sm btn-link" data-toggle="dropdown" href="#"><i class="fa fa-gear"></i></button>
								<ul class="dropdown-menu text-center pull-left" role="menu" aria-labelledby="dLabel">
									<button class="btn btn-sm btn-default edit" type="button" title="[[topic:edit]]"><i class="fa fa-pencil"></i></button>
									<button class="btn btn-sm btn-default delete" type="button" title="[[topic:delete]]"><i class="fa fa-trash-o"></i></button>
									<button class="btn btn-sm btn-default purge <!-- IF !posts.deleted -->none<!-- ENDIF !posts.deleted -->" type="button" title="[[topic:purge]]"><i class="fa fa-eraser"></i></button>
									<!-- IF posts.display_move_tools -->
									<button class="btn btn-sm btn-default move" type="button" title="[[topic:move]]"><i class="fa fa-arrows"></i></button>
									<!-- ENDIF posts.display_move_tools -->
								</ul>
							</div>
						</div>
						<!-- ENDIF posts.display_moderator_tools -->

						<!-- IF !posts.selfPost -->
						<div class="btn-group">
							<button class="btn btn-sm btn-link flag" type="button" title="[[topic:flag_title]]"><i class="fa fa-exclamation-triangle">	<!-- IF posts.display_moderator_tools -->
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
														<li> <a class="pointer edit" title="[[topic:edit]]"><i class="fa fa-pencil"></i> Editar</a></li>
														<!-- IF privileges.editable -->
														<li> <a class="pointer delete" title="[[topic:delete]]"><i class="fa fa-trash-o"></i> Borrar</a></li>
														<li> <a class="pointer purge <!-- IF !posts.deleted -->none<!-- ENDIF !posts.deleted -->" title="[[topic:purge]]"><i class="fa fa-eraser"></i> Purgar</a></li>
														<!-- ENDIF privileges.editable -->
														<!-- IF posts.display_move_tools -->
														<li> <a class="pointer move" title="[[topic:move]]"><i class="fa fa-arrows"></i> Mover</a></li>
														<!-- ENDIF posts.display_move_tools -->
												

														<!-- ENDIF posts.display_moderator_tools -->
														<!-- IF !posts.index -->
														<li><a class="pointer follow" title="[[topic:notify_me]]">
															<!-- IF isFollowing --><i class="fa fa-eye-slash">&nbsp;</i><span>[[topic:unwatch]]</span>
															<!-- ELSE --><i class="fa fa-eye">&nbsp;</i><span>[[topic:watch]]</span>
															<!-- ENDIF isFollowing -->
														</a></li>
														<!-- ENDIF !posts.index -->
														
														<!-- IF !posts.selfPost -->
														<li><a class="pointer flag" title="[[topic:flag_title]]"><i class="fa fa-exclamation-triangle"> Reportar
																<!-- IF posts.display_moderator_tools -->
																<span style="color:red; font-weight:bold;"> {posts.flags}</span>
																<!-- ENDIF posts.display_moderator_tools -->
														</i></a></li>	
														<!-- ENDIF !posts.selfPost -->
												
												</ul>
												<button class="btn btn-sm btn-default btn-exodin quote" type="button">
													<span><i class="fa fa-quote-left"></i></span>
												</button>
												<button class="btn btn-sm btn-default btn-exodin post_reply" type="button">
													<span><i class="fa fa-reply"></i></span>
												</button>
											</div>
											
											<!-- ENDIF privileges.topics:reply -->
												
												
												
												
											


										
					</div>

					<div class="pull-right hidden-xs">
						<!-- IF loggedIn -->
						
						
						
						<div class="btn-group">
							<!-- IF !posts.index -->
							<button class="btn btn-sm btn-link follow" type="button" title="[[topic:notify_me]]">
								<!-- IF isFollowing -->
								<i class="fa fa-eye-slash">&nbsp;</i>
								<label><span>[[topic:unwatch]]</span></label>
								<!-- ELSE -->
								<i class="fa fa-eye">&nbsp;</i>
								<label><span>[[topic:watch]]</span></label>
								<!-- ENDIF isFollowing -->
							</button>
							<!-- ENDIF !posts.index -->
						</div>
						<!-- ENDIF loggedIn -->

						<!-- IF !reputation:disabled -->
						<div class="btn-group reputation">
							<button class="upvote btn btn-sm btn-link <!-- IF posts.upvoted --> upvoted btn-primary <!-- ENDIF posts.upvoted -->">
								<i class="fa fa-chevron-up"></i>
							</button>
							<button class="votes btn btn-sm btn-link" data-votes="{posts.votes}"> {posts.votes} </button>
							<!-- IF !downvote:disabled -->
							<button class="downvote btn btn-sm btn-link <!-- IF posts.downvoted --> downvoted btn-primary <!-- ENDIF posts.downvoted -->">
								<i class="fa fa-chevron-down"></i>
							</button>
							<!-- ENDIF !downvote:disabled -->
						</div>
						<!-- ENDIF !reputation:disabled -->

						<!-- IF privileges.topics:reply -->
						<div id="likesBtnGroup" class="btn-group" style="display:none">
							<button data-pid="{posts.pid}" class="btn btn-sm btn-link col-xs-1" type="button" id="likesBtn"><i class="fa fa-thumbs-o-up"></i></button>
							<a href="#!" id="likesCount" class="col-xs-1" data-pid="{posts.pid}" data-likes="{posts.likes}"></a>
						</div>

						<div class="btn-group">
							<button class="btn btn-sm btn-link quote" type="button"><i class="fa fa-quote-left"></i> <label> [[topic:quote]] </label></button>
						</div>

						<div class="btn-group">
							<button class="btn btn-sm btn-link post_reply" type="button"><i class="fa fa-reply"></i> <label> [[topic:reply]]</label></button>
						</div>
						<!-- ENDIF privileges.topics:reply -->
					</div>
					
				</div>
			</div>
		</li>

		<!-- IF !posts.index -->
		<li class="well post-bar" data-index="{posts.index}">
			<!-- IMPORT partials/post_bar.tpl -->
		</li>
		<!-- ENDIF !posts.index -->
		<!-- END posts -->
	</ul>

	<div class="topic-foot">
		<div class="topic-head-middle clearfix <!-- IF config.usePagination --> headdown <!-- ENDIF config.usePagination -->">
			<div class="pull-left topic-buttons-right">
			
				<span class="btn-group hidden-xs">
					<button class="btn post_reply btn-exodo<!-- IF !privileges.topics:reply --> disabled<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]<span>+</span></button>
				</span>
				<span class="btn-group visible-xs">
				<button class="btn btn-group btn-sm btn-default btn-exodin post_reply<!-- IF !privileges.topics:reply --> disabled<!-- ENDIF !privileges.topics:reply -->"><i class="fa fa-plus"></i></button>
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

	<div class="post-bar bottom-post-bar">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IMPORT partials/move_thread_modal.tpl -->
	<!-- IMPORT partials/fork_thread_modal.tpl -->
	<!-- IMPORT partials/move_post_modal.tpl -->
</div>

<div widget-area="footer" class="col-xs-12"></div>

<!-- IMPORT partials/noscript/paginator.tpl -->
