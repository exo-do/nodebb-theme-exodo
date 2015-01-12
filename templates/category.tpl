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
		
		<div class="category-head-top">
			<h1>{name}</h1>
			<p>{description}</p>
		</div>
		
		<div class="category-head-middle clearfix">
			<div class="category-head-reply">
				<button id="new_post" class="btn btn-exodo<!-- IF !privileges.topics:create --> disabled<!-- ENDIF !privileges.topics:create -->">[[category:new_topic_button]]<span>+</span></button>
			</div>
			
			<div class="category-head-pagination">
				<!-- IF config.usePagination -->
				<div>
					<div class="pagination-count">Página {currentPage} de {pageCount} <span>({topic_count} hilos)</span></div>
					<ul class="pagination">
						<li class="previous pull-left"><a href="#"><i class="fa fa-chevron-left"></i></a></li>
						<li class="next pull-right"><a href="#"><i class="fa fa-chevron-right"></i></a></li>
					</ul>
				</div>
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
	
	<div class="category-options clearfix">
		<div class="panel panel-default">
			<div class="panel-heading" role="tab" id="legendHeading">
				<h4 class="panel-title">
					<a data-toggle="collapse" href="#legend" aria-expanded="true" aria-controls="legend" class="fa collapse-button"></a>
					Leyenda de iconos
				</h4>
			</div>
			<div id="legend" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="legendHeading">
				<div class="panel-body">
					<dl class="icon_legends">
						<dt><img title="Contiene mensajes sin leer" src="https://exo.do/images/exodo/statusicon/thread_new-16.png" alt="Contiene mensajes sin leer"></dt><dd>Contiene mensajes sin leer</dd>
						<dt><img title="No contiene mensajes sin leer" src="https://exo.do/images/exodo/statusicon/thread-16-right.png" alt="No contiene mensajes sin leer"></dt><dd>No contiene mensajes sin leer</dd>
						<dt><img title="Más de 15 respuestas o 150 visitas" src="https://exo.do/images/exodo/statusicon/thread_hot-16.png" alt="Más de 15 respuestas o 150 visitas"></dt><dd>Tema caliente</dd>
						<dt><img title="Cerrado" src="https://exo.do/images/exodo/statusicon/thread_lock-16.png" alt="Cerrado"></dt><dd>Cerrado</dd>
						<dt><img title="Temas que contienen mensajes escritos por ti" src="https://exo.do/images/exodo/statusicon/thread_dot-16-right.png" alt="Temas que contienen mensajes escritos por ti"></dt><dd>Has participado en este tema</dd>
					</dl>
				</div>
			</div>
		</div>
		
		<div class="panel panel-default">
			<div class="panel-heading" role="tab" id="permissionsHeading">
				<h4 class="panel-title">
					<a data-toggle="collapse" href="#permissions" aria-expanded="true" aria-controls="permissions" class="fa collapse-button"></a>
					Permisos de publicación
				</h4>
			</div>
			<div id="permissions" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="permissionsHeading">
				<div class="panel-body">
					<ul class="youcandoblock">
						<li><strong>Puedes</strong> crear nuevos temas</li>
						<li><strong>Puedes</strong> responder temas</li>
						<li><strong>Puedes</strong> subir archivos adjuntos</li>
						<li><strong>Puedes</strong> editar tus mensajes</li>
					</ul>
					
					<ul class="bbcodeblock">
						<li><a href="#" target="_blank">Códigos BB</a> están <strong>Activo</strong></li>
						<li>Los <a href="#" target="_blank">Emoticonos</a> están <strong>Activo</strong></li>
						<li>Código <a href="#" target="_blank">[IMG]</a> está <strong>Activo</strong></li>
						<li>Código <a href="#" target="_blank">[VIDEO]</a> está <strong>Activo</strong></li>
						<li>Código HTML está <strong>Inactivo</strong></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->
<!-- IMPORT partials/noscript/paginator.tpl -->
