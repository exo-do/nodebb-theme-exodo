<div class="popular">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<ul class="nav nav-pills">
		<li><a href='{relative_path}/popular/daily'>[[recent:day]]</a></li>
		<li><a href='{relative_path}/popular/weekly'>[[recent:week]]</a></li>
		<li><a href='{relative_path}/popular/monthly'>[[recent:month]]</a></li>
		<li><a href='{relative_path}/popular/alltime'>[[recent:alltime]]</a></li>
	</ul>

	<br />

	<a href="{relative_path}/popular">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		<strong>No hay temas populares.</strong>
	</div>
	<!-- ENDIF !topics.length -->

	<div class="category">
		<!-- IMPORT partials/topics_list.tpl -->
	</div>
</div>