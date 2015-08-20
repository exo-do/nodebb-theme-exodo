<input type="hidden" template-variable="category_id" value="{cid}" />
<input type="hidden" template-variable="category_name" value="{name}" />
<input type="hidden" template-variable="category_slug" value="{slug}" />
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
			
		<div class="pull-left category-buttons-right">
		
			<!-- IF privileges.topics:create -->
			<span class="btn-group">
				<button id="new_topic" class="btn btn-exodo"><span class="hidden-xs">[[category:new_topic_button]]</span><span class="exright">+</span></button>
			</span>
			<!-- ELSE -->
			<!-- IF !loggedIn -->
			<a href="{config.relative_path}/login" class="btn btn-exodo">[[category:guest-login-post]]<span class="exright hidden-xs">+</span></a>
			<!-- ENDIF !loggedIn -->
			<!-- ENDIF privileges.topics:create -->
						
			<!-- IF loggedIn -->			
			<span class="btn-group">
				<button type="button" class="btn btn-exodo watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored --> tool"><span class="hidden-xs">[[category:watch]]</span><span class="exright"><i class="fa fa-eye-slash"></i></span></button>
				<button type="button" class="btn btn-exodo ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored --> tool"><span class="hidden-xs">[[category:ignore]]</span><span class="exright"><i class="fa fa-eye"></i></span></button>
			</span>
			<!-- ENDIF loggedIn -->			
	
			<!-- IMPORT partials/category_tools.tpl -->
			
			<!-- Recents Filter Plugin Code Begin-->
			<a href="#!" onclick="showHideFilters()"><span class="btn-group"><button class="btn btn-exodo"><span class="hidden-xs">Filtros</span><span class="exright"><i class="fa fa-filter"></i></span></button></span></a>
			</br>
			</br>
			<div id="filtersContainer" style="display:none">
				<div class="col-xs-12">
					<label class="control-label" for="excludedTitleWords"><h5>Filtro de títulos de temas <i class="fa fa-scissors"></i></h5></label>
					<input class="col-xs-12" type="text" id="excludedTitleWords" placeholder="Separadas por espacios">
					<br>
					<small>Los hilos que contengan alguna de estas palabras en el título se ocultarán.</small>
				</div>

				<div class="col-xs-12">
					<label class="control-label" for="excludedTags"><h5>Filtro de etiquetas <i class="fa fa-minus-square"></i></h5></label>
					<input class="col-xs-12" type="text" id="excludedTags" placeholder="Separadas por espacios">
					<br>
					<small>Los hilos que contengan alguna de estas etiquetas se ocultarán.</small>
				</div>

				<div class="col-xs-12">
					<label class="control-label" for="onlyThisTags"><h5>Filtro de etiquetas <i class="fa fa-plus-square"></i></h5></label>
					<input class="col-xs-12" type="text" id="onlyThisTags" placeholder="Separadas por espacios">
					<br>
					<small>Solo los hilos que contengan estas etiquetas serán mostrados</small>
				</div>
				<div class="clearfix"></div>
				</br>
				</br>
				<div clas="pull-right">
					<a align="center" id="submitBtn" href="#!" onclick="saveFilters()" class="btn btn-exodo"> Guardar filtros <span class="exright"><i class="fa fa-cloud"></i></span></a>
				</div>
				</br>
				</br>
			</div>
			<!-- Recents Filter Plugin Code End-->			
</div>
			
			
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
<!-- IF !config.usePagination -->
<noscript>
<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
