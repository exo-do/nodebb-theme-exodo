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
		
	</br></br>
		<div class="category-head-middle clearfix <!-- IF config.usePagination --> headup <!-- ENDIF config.usePagination -->">
			
			<!--<div class="category-head-reply"></div>-->
			<!--<div class="category-head-bottom pull-left"> -->
			<!--<div class="category-head-tools visible-sm-inline visible-md-inline visible-lg-inline"> -->
			<div class="pull-left category-buttons-right">
		
						
						
						<!-- IF privileges.topics:create -->
						<button id="new_topic" class="btn btn-exodo">[[category:new_topic_button]]</button>
						<!-- ELSE -->
							<!-- IF !loggedIn -->
							<a href="{config.relative_path}/login" class="btn btn-exodo">[[category:guest-login-post]]</a>
							<!-- ENDIF !loggedIn -->
						<!-- ENDIF privileges.topics:create -->
						
						<!-- IF loggedIn -->
						
						<span class="btn-group hidden-xs">
						<button type="button" class="btn btn-exodo watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored --> tool"> [[category:watch]]<span><i class="fa fa-eye"></i></span></button>
						<button type="button" class="btn btn-exodo ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored --> tool"> Ignorar<span><i class="fa fa-eye-slash"></i></span></button>
						</span>
						
						<span class="btn-group  visible-xs">
						
							<button type="button" class="btn btn-sm btn-default btn-exodin watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored --> tool"><span><i class="fa fa-eye"></i></span></button>
							<button type="button" class="btn btn-sm btn-default btn-exodin ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored --> tool"><span><i class="fa fa-eye-slash"></i></span></button>
							
						</span>
						
						<!-- ENDIF loggedIn -->
						
						<span class="dropdown share-dropdown btn-group">
							<button type="button"  data-toggle="dropdown" class="btn btn-exodo dropdown-toggle tool hidden-xs">
								[[topic:share]] <span><i class="fa fa-share-alt"></i></span>
							</button>
						<button type="button" data-toggle="dropdown" class="btn btn-sm btn-default btn-exodin dropdown-toggle tool visible-xs"><i class="fa fa-share-alt"></i></button>	
						<!-- IMPORT partials/share_dropdown.tpl -->
						</span>
						
	
						<!-- IMPORT partials/category_tools.tpl -->
						
			</div>
				<!--</div>-->
			
			
			<div class="category-head-pagination">
				<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
				<!-- ENDIF config.usePagination -->
			</div>
		
			
			
		</div>
			
	</div>
	
	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		[[category:no_topics]]
	</div>
	<!-- ENDIF !topics.length -->

	<!-- IMPORT partials/topics_list.tpl -->
	

	<!-- IF config.usePagination -->
	<div class="category-head-pagination pagination-foot">
			<!-- IMPORT partials/paginator.tpl -->
	</div>
	<!-- ENDIF config.usePagination -->
	
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->
<!-- IMPORT partials/noscript/paginator.tpl -->
