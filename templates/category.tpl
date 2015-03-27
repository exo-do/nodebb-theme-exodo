<input type="hidden" template-variable="category_id" value="{cid}" />
<input type="hidden" template-variable="category_name" value="{name}" />
<input type="hidden" template-variable="topic_count" value="{topic_count}" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="pageCount" value="{pageCount}" />

<div class="category">
	<div class="category-head">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		
		<!-- IF children.length -->
			<div class="subcategories row">
				<!-- BEGIN children -->
				<!-- IMPORT partials/category_child.tpl -->
				<!-- END children -->
			</div>
		<!-- ENDIF children.length -->
		
		<div class="text-center category-head-top">
			<h1>{name}</h1>
			<i class="hidden-xs">{description}</i>
		</div>
	</br>
		<div class="category-head-middle clearfix">
			<div class="category-head-reply">
				<button id="new_post" class="btn btn-exodo<!-- IF !privileges.topics:create --> disabled<!-- ENDIF !privileges.topics:create -->">[[category:new_topic_button]]<span>+</span></button>
			</div>
			
			<div class="category-head-bottom">
				<div class="category-head-tools">
					<span class="pull-left">
					</span>
					<span class="pull-right">
						<!-- IF loggedIn -->
						<span class="btn-group visible-sm-inline visible-md-inline visible-lg-inline">
						<button type="button" class="btn btn-exodo watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored --> tool"> [[topic:watch]] <span><i class="fa fa-eye"></i></span></button>
						<button type="button" class="btn btn-exodo ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored --> tool"> [[category:ignore]]<span><i class="fa fa-eye-slash"></i></span></button>
						</span>
						
						<span class="btn-group visible-xs-inline">
						<button type="button" class="btn btn-default btn-success watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored --> tool"><i class="fa fa-eye"></i> [[topic:watch]]</button>
											<button type="button" class="btn btn-default btn-warning ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored --> tool"><i class="fa fa-eye-slash"></i> [[category:ignore]]</button>
						</span>
						<!-- ENDIF loggedIn -->
	
						<!-- IMPORT partials/category_tools.tpl -->
	
						<div class="dropdown share-dropdown btn-group">
							<button type="button" class="btn btn-exodo dropdown-toggle tool" data-toggle="dropdown">
								[[topic:share]] <span><i class="fa fa-share-alt"></i></span><span class="caret hidden"></span>
							</button>
	
						<!-- IMPORT partials/share_dropdown.tpl -->
						</div>
					</span>
					
			
					<!-- IF config.usePagination -->
					<div class="category-head-pagination">
						<!-- IMPORT partials/paginator.tpl -->
					</div>
					<!-- ENDIF config.usePagination -->
				</div>
			</div>
			
			
			
		</div>

		
		
	</div>
	
	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		[[category:no_topics]]
	</div>
	<!-- ENDIF !topics.length -->

	<!-- IMPORT partials/topics_list.tpl -->
	
	<div class="category-head-pagination">
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
	
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->
<!-- IMPORT partials/noscript/paginator.tpl -->
