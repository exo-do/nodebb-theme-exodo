	<ol class="breadcrumb">
		<img class="breadcrumb-home" src="https://exo.do/images/exodo/misc/navbit-home.png" title="Inicio" alt="Inicio">
		<!-- BEGIN breadcrumbs -->
		<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<!-- IF !@last --><a href="{breadcrumbs.url}" itemprop="url"><!-- ENDIF !@last -->
			<span itemprop="title">
				{breadcrumbs.text}
				<!-- IF @last -->
					<!-- IF !feeds:disableRSS -->
					<a target="_blank" href="{relative_path}/topic/{tid}.rss"><i class="fa fa-rss-square"></i></a>
					<!-- ENDIF !feeds:disableRSS -->
				<!-- ENDIF @last -->
			</span>
			<!-- IF !@last --></a><!-- ENDIF !@last -->
		</li>
		<!-- END breadcrumbs -->
		
		<!-- IF template.recent -->
		<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<a href="{relative_path}/" itemprop="url"><span itemprop="title">[[global:home]]</span></a>
		</li>
		<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<span itemprop="title">
				[[recent:title]]
				<!-- IF !feeds:disableRSS -->
				<a target="_blank" href="{relative_path}/recent.rss"><i class="fa fa-rss-square"></i></a>
				<!-- ENDIF !feeds:disableRSS -->
			</span>
		</li>
		<!-- ENDIF template.recent -->
		
		<!-- IF template.popular -->
		<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<a href="{relative_path}/" itemprop="url"><span itemprop="title">[[global:home]]</span></a>
		</li>
		<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<span itemprop="title">
				[[global:header.popular]]
				<!-- IF !feeds:disableRSS -->
				<a target="_blank" href="{relative_path}/popular.rss"><i class="fa fa-rss-square"></i></a>
				<!-- ENDIF !feeds:disableRSS -->
			</span>
		</li>
		<!-- ENDIF template.popular -->
	</ol>