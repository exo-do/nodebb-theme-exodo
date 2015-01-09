<input type="hidden" template-variable="category_id" value="{cid}" />
<input type="hidden" template-variable="category_name" value="{name}" />
<input type="hidden" template-variable="topic_count" value="{topic_count}" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="pageCount" value="{pageCount}" />

<div class="category">
	<div class="category-head">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		<div class="subcategories row">
			<!-- BEGIN children -->
			<!-- IMPORT partials/category_child.tpl -->
			<!-- END children -->
		</div>
		<div class="category-head-title">
			<h1>{name}</h1>
			<p>{description}</p>
		</div>
		<!-- IF privileges.topics:create -->
		<div class="category-head-reply">
			<button id="new_post" class="btn btn-primary new_post_btn">[[category:new_topic_button]]<span>+</span></button>
		</div>
		<!-- ENDIF privileges.topics:create -->

		<div class="category-tools">
			<div class="category-tools-button">
				<span class ="pull-left">
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

	<ul id="topics-container" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
		<div class="threadlisthead">
			<span class="threadinfo">
				<span class="threadtitle">
					<a>Título</a> /
					<a>Autor</a>
				</span>
			</span>
			<span class="threadstats"><a>Respuestas</a> / <a>Visitas</a></span>
			<span class="threadlastpost"><a>Último mensaje</a></span>
		</div>
		<meta itemprop="itemListOrder" content="descending">
		<!-- BEGIN topics -->
		<li class="category-item<!-- IF topics.locked --> locked<!-- ENDIF topics.locked --><!-- IF topics.pinned --> pinned<!-- ENDIF topics.pinned --><!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.userParticipated --> participated<!-- ENDIF topics.userParticipated --><!-- IF topics.isHot --> hot<!-- ENDIF topics.isHot --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread -->" itemprop="itemListElement" data-tid="{topics.tid}" data-index="{topics.index}">
			<div class="panel panel-default topic-row clearfix">
				<div class="threadinfo">
					<a class="threadstatus"></a>
					<h3>
						<a href="{relative_path}/topic/{topics.slug}" itemprop="url">
							<meta itemprop="name" content="{topics.title}">

							<strong><i class="fa fa-thumb-tack<!-- IF !topics.pinned --> hide<!-- ENDIF !topics.pinned -->"></i> <i class="fa fa-lock<!-- IF !topics.locked --> hide<!-- ENDIF !topics.locked -->"></i></strong>
							<span class="topic-title">{topics.title}</span>
						</a>
					</h3>

					<small>
						Iniciado por <a href="<!-- IF topics.user.userslug -->{relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">{topics.user.username}</a>, [[global:posted_ago, <span class="timeago" title="{topics.relativeTime}"></span>]]
					</small>
					
					<div class="threaddetails">
						<!-- IF topics.tags.length -->
						<img title="<!-- BEGIN tags -->{topics.tags.value} <!-- END tags -->" src="http://exo.do/images/exodo/misc/tag.png" alt="<!-- BEGIN tags -->{topics.tags.value} <!-- END tags -->">
						<!-- ENDIF topics.tags.length -->
					</div>
				</div>
				<ul class="threadstats">
					<li>[[global:posts]]: {topics.postcount}</li>
					<li>[[global:views]]: {topics.viewcount}</li>
				</ul>
				<dl class="threadlastpost">
					<!-- IF topics.unreplied -->
					<dd class="unreplied">
						[[category:no_replies]]
					</dd>
					<!-- ELSE -->
					<dd>
						<img class="user-pic" src="{topics.teaser.user.picture}" />&nbsp;
						<a href="<!-- IF topics.teaser.user.userslug -->{relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">
							{topics.teaser.user.username}
						</a>
					</dd>
					<dd>
						[[global:replied_ago, <span class="timeago" title="{topics.teaser.timestamp}"></span>]]
						<a href="{relative_path}/topic/{topics.slug}/{topics.teaser.index}" title="Ir al último mensaje" class="lastpost">→</a>
					</dd>
					<!-- ENDIF topics.unreplied -->
				</dl>
				<!-- IF privileges.editable -->
				<label class="threadimod">
					<i class="fa fa-fw fa-square-o select pointer"></i>
				</label>
				<!-- ENDIF privileges.editable -->
			</div>
		</li>
		<!-- END topics -->
	</ul>
	
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
	<!-- IF config.usePagination -->
	<div class="text-center">
		<ul class="pagination">
			<li class="previous pull-left"><a href="#"><i class="fa fa-chevron-left"></i> [[global:previouspage]]</a></li>
			<li class="next pull-right"><a href="#">[[global:nextpage]] <i class="fa fa-chevron-right"></i></a></li>
		</ul>
	</div>
	<!-- ENDIF config.usePagination -->
	

	<!-- IF topics.length -->
	<div widget-area="sidebar" class="col-md-3 col-xs-12 category-sidebar"></div>
	<!-- ENDIF topics.length -->
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->
<!-- IMPORT partials/noscript/paginator.tpl -->
