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
		<!--
		<div class="topic-head-top">
			<h1>Tema: <a title="{title}" href="/topic/{slug}">{title}</a></h1>
		</div>
		-->
		<div class="topic-head-middle clearfix">
			<div class="topic-head-reply">
				<button class="btn post_reply btn-exodo<!-- IF !privileges.topics:reply --> disabled<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]<span>+</span></button>
			</div>

			<div class="topic-head-pagination">

				<!-- IF config.usePagination -->
                                <!-- IMPORT partials/paginator.tpl -->
                        	<!-- ENDIF config.usePagination -->



				<!--
				<!-- IF config.usePagination -->
				<div>
					<div class="pagination-count hidden-xs">Página {currentPage} de {pageCount} <span>({postcount} posts)</span></div>
					<ul class="pagination">
						<li class="previous pull-left"><a href="#"><i class="fa fa-chevron-left"></i></a></li>
						<li class="next pull-right"><a href="#"><i class="fa fa-chevron-right"></i></a></li>
					</ul>
				</div>
				<!-- ENDIF config.usePagination -->
				-->
			</div>
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
					<div class="post-date pull-left">
						<span class="date"><i class="fa fa-clock-o"></i> {function.humanReadableDate}</span>
					</div>
					<!--
					<div class="post-date pull-middle">
					<span><a title="{title}" href="/topic/{slug}">{title}</a></span>
					</div>
					-->
					<div class="post-meta pull-right">
						<span class="post-index"><a href="/topic/{slug}/{function.postIndexPlusOne}">#{function.postIndexPlusOne}</a></span>
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
							<img src="{posts.user.picture}" align="left" class="img-thumbnail" itemprop="image" />
							<br>
							<!-- IF posts.user.banned -->
							<span class="label label-danger">[[user:banned]]</span>
							<br>
							<!-- ENDIF posts.user.banned -->
						</a>

						<dl class="userinfo-extra">
							<!-- IF posts.user.custom_profile_info.length -->
							<!-- BEGIN custom_profile_info -->
							<!-- IF posts.user.custom_profile_info.joindate --><dt>Fecha de ingreso:</dt> <dd>{posts.user.custom_profile_info.joindate}</dd><!-- ENDIF posts.user.custom_profile_info.joindate -->
							<!-- IF posts.user.custom_profile_info.location --><dt>Ubicación:</dt> <dd>{posts.user.custom_profile_info.location}</dd><!-- ENDIF posts.user.custom_profile_info.location -->
							<!-- END custom_profile_info -->
							<!-- ENDIF posts.user.custom_profile_info.length -->
							<dt>[[global:reputation]]:</dt> <dd><span data-reputation="{posts.user.reputation}" data-uid="{posts.uid}" class='formatted-number reputation'>{posts.user.reputation}</dd>
							<dt>[[global:posts]]:</dt> <dd><span class='formatted-number user_postcount_{posts.uid}'>{posts.user.postcount}</dd>
						</dl>

					</div>

					<div class="post-block">
						<a class="main-post avatar" href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
							<img itemprop="image" src="{posts.user.picture}" align="left" class="img-thumbnail" width=150 height=150 />
						</a>

						<h3 class="main-post">{title}</h3>

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
						<div class="btn-group post-tools">
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
						<div class="btn-group">
							<!-- IF !posts.selfPost -->
							<button class="btn btn-sm btn-link flag" type="button" title="[[topic:flag_title]]"><i class="fa fa-exclamation-triangle"></i></button>
							<!-- ENDIF !posts.selfPost -->
						</div>
					</div>

					<div class="pull-left visible-xs">
						<div class="btn-group">
							<button class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" type="button" title="<!-- IF posts.user.userslug -->[[topic:posted_by, {posts.user.username}]]<!-- ELSE -->[[topic:posted_by_guest]]<!-- ENDIF posts.user.userslug -->">
								<i class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
								<span class="inline"><img class="" src="{posts.user.picture}" width=18 height=18 />&nbsp;</span>
								<span class="username-field" href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}&nbsp;</span>
								<span class="caret"></span>
							</button>

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
							</ul>
						</div>
						<div class="btn-group">
							<button class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" type="button">
								<i class="fa fa-gear" title="Herramientas"></i>
								<span class="caret"></span>
							</button>
							
							<ul class="dropdown-menu">
								<li><!-- IF !posts.selfPost --><a class="pointer flag" title="[[topic:flag_title]]"><i class="fa fa-exclamation-triangle"></i> Reportar</a><!-- ENDIF !posts.selfPost --></li>
								<!-- IF !posts.index -->
								<li><a class="pointer follow" title="[[topic:notify_me]]">
									<!-- IF isFollowing --><i class="fa fa-eye-slash"></i> [[topic:unwatch]]
									<!-- ELSE --><i class="fa fa-eye"></i> [[topic:watch]]<!-- ENDIF isFollowing -->
								</a></li>
								<!-- ENDIF !posts.index -->
							</ul>
						</div>
					</div>
					<div class="pull-right visible-xs">
						<div class="btn-group">
							<button class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" type="button">
								<i class="fa fa-pencil" title="Responder"></i> Responder
								<span class="caret"></span>
							</button>
							
							<ul class="dropdown-menu pull-right">
								<!-- IF privileges.topics:reply -->
								<li><a class="pointer quote"><i class="fa fa-quote-left"></i> [[topic:quote]]</a></li>
								<li><a class="pointer post_reply"><i class="fa fa-reply"></i> [[topic:reply]]</a></li>
								<!-- ENDIF privileges.topics:reply -->
							</ul>
						</div>
					</div>

					<div class="pull-right hidden-xs">
						<!-- IF loggedIn -->
						<div class="btn-group">
							<!-- IF !posts.index -->
							<button class="btn btn-sm btn-link follow" type="button" title="[[topic:notify_me]]">
								<!-- IF isFollowing -->
								<i class="fa fa-eye-slash"></i>
								<label><span>[[topic:unwatch]]</span></label>
								<!-- ELSE -->
								<i class="fa fa-eye"></i>
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
							<button class="votes btn btn-sm btn-link" data-votes="{posts.votes}">{posts.votes}</button>
							<!-- IF !downvote:disabled -->
							<button class="downvote btn btn-sm btn-link <!-- IF posts.downvoted --> downvoted btn-primary <!-- ENDIF posts.downvoted -->">
								<i class="fa fa-chevron-down"></i>
							</button>
							<!-- ENDIF !downvote:disabled -->
						</div>
						<!-- ENDIF !reputation:disabled -->

						<!-- IF privileges.topics:reply -->
						<div class="btn-group">
							<button class="btn btn-sm btn-link quote" type="button"><i class="fa fa-quote-left"></i> <label>[[topic:quote]]</label></button>
						</div>

						<div class="btn-group">
							<button class="btn btn-sm btn-link post_reply" type="button"><i class="fa fa-reply"></i> <label>[[topic:reply]]</label></button>
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
		<div class="topic-head-middle clearfix">
			<div class="topic-head-reply">
				<button class="btn post_reply btn-exodo<!-- IF !privileges.topics:reply --> disabled<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]<span>+</span></button>
			</div>

			

			<div class="topic-head-pagination">
				<!-- IF config.usePagination -->
                                <!-- IMPORT partials/paginator.tpl -->
                	        <!-- ENDIF config.usePagination -->
		
			

				<!--
				<!-- IF config.usePagination -->
				<div>
					<div class="pagination-count hidden-xs">Página {currentPage} de {pageCount} <span>({postcount} posts)</span></div>
					<ul class="pagination">
						<li class="previous pull-left"><a href="#"><i class="fa fa-chevron-left"></i></a></li>
						<li class="next pull-right"><a href="#"><i class="fa fa-chevron-right"></i></a></li>
					</ul>
				</div>
				<!-- ENDIF config.usePagination -->
				-->
			</div>
		</div>
	</div>

	<div class="post-bar bottom-post-bar hide">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IMPORT partials/move_thread_modal.tpl -->
	<!-- IMPORT partials/fork_thread_modal.tpl -->
	<!-- IMPORT partials/move_post_modal.tpl -->
</div>

<div widget-area="footer" class="col-xs-12"></div>

<!-- IMPORT partials/noscript/paginator.tpl -->
