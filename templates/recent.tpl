<div class="recent">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<!-- IF loggedIn -->
	
	<a href="{config.relative_path}/recent">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>
	
	<span class="btn-group">
		<button id="new_topic" class="btn btn-exodo"><span class="hidden-xs">[[category:new_topic_button]]</span><span class="exright">+</span></button>
	</span>
	
	<!-- ELSE -->
	<a href="{config.relative_path}/login" class="btn btn-exodo">[[category:guest-login-post]] <span class="exright hidden-xs">+</span></a>
	<!-- ENDIF loggedIn -->

		<!-- Recents Filter Plugin Code Begin-->
		<a href="#!" onclick="showHideFilters()"><span class="btn-group"><button class="btn btn-exodo <!-- IF !loggedIn -->	hidden <!-- ENDIF !loggedIn -->"><span class="hidden-xs">Filtros</span><span class="exright"><i class="fa fa-filter"></i></span></button></span></a>
		</br></br>
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
	<!-- Recents Filter Plugin Code End -->
	

	
<!-- IF !topics.length -->
<div class="alert alert-warning" id="category-no-topics">
<strong>[[recent:no_recent_topics]]</strong>
</div>
<!-- ENDIF !topics.length -->

<div class="category">
<!-- IMPORT partials/topics_list.tpl -->
</div>
</div>