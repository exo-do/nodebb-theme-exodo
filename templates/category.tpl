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
		
		<div class="category-head-middle clearfix">
			<div class="category-head-reply">
				<button id="new_post" class="btn btn-exodo<!-- IF !privileges.topics:create --> disabled<!-- ENDIF !privileges.topics:create -->">[[category:new_topic_button]]<span>+</span></button>
			</div>
			
			<div class="category-head-pagination">
				<!-- IF config.usePagination -->
					<!-- IMPORT partials/paginator.tpl -->
				<!-- ENDIF config.usePagination -->
			</div>
		</div>

		<div class="category-head-bottom">
			<div class="category-head-tools">
				<span class="pull-left">
				</span>
				<span class="pull-right">
					<!-- IF loggedIn -->
					<button type="button" class="btn btn-default btn-success watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored --> tool"><i class="fa fa-eye"></i> [[topic:watch]]</button>
					<button type="button" class="btn btn-default btn-warning ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored --> tool"><i class="fa fa-eye-slash"></i> [[category:ignore]]</button>
					<!-- ENDIF loggedIn -->
	
					<!-- IMPORT partials/category_tools.tpl -->
	
					<div class="dropdown share-dropdown inline-block">
						<button type="button" class="btn btn-default dropdown-toggle tool" data-toggle="dropdown">
							[[topic:share]] <span class="caret"></span>
						</button>
	
						<!-- IMPORT partials/share_dropdown.tpl -->
					</div>
				</span>
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
	
	<div class="category-options clearfix">
		<div class="panel col-lg-12 col-xs-12 panel-default">
			<div id="legend" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="legendHeading">
				<div class="panel-body">
					<span><img title="Contiene mensajes sin leer" src="https://exo.do/images/exodo/statusicon/thread_new-16.png" alt="Contiene mensajes sin leer"/>Sin leer</span>
						<span><img title="No contiene mensajes sin leer" src="https://exo.do/images/exodo/statusicon/thread-16-right.png" alt="No contiene mensajes sin leer"/>Leidos</span>
			<!--		<span><img title="Más de 15 respuestas o 150 visitas" src="https://exo.do/images/exodo/statusicon/thread_hot-16.png" alt="Más de 15 respuestas o 150 visitas"/>Tema </span> -->
					<span><img title="Cerrado" src="https://exo.do/images/exodo/statusicon/thread_lock-16.png" alt="Cerrado"/>Cerrado</span>
						<span><img title="Temas que contienen mensajes escritos por ti" src="https://exo.do/images/exodo/statusicon/thread_dot-16-right.png" alt="Temas que contienen mensajes escritos por ti"/>Has participado</span>
						
				</div>
			</div>
		</div>
	</div>
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->
<!-- IMPORT partials/noscript/paginator.tpl -->
