	<ol class="breadcrumb">
		<img style="display: inline-block; top: -5px; position: relative; padding-right: 5px;" src="https://exo.do/images/exodo/misc/navbit-home.png" title="Inicio" alt="Inicio">
		<!-- BEGIN breadcrumbs -->
		<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<!-- IF !@last --><a href="{breadcrumbs.url}" itemprop="url"><!-- ENDIF !@last -->
				<span itemprop="title">
					{breadcrumbs.text}
					<!-- IF @last -->
					<!-- IF !feeds:disableRSS --><a target="_blank" href="{relative_path}/topic/{tid}.rss"><i class="fa fa-rss-square"></i></a><!-- ENDIF !feeds:disableRSS -->
					<!-- ENDIF @last -->
				</span>
			<!-- IF !@last --></a><!-- ENDIF !@last -->
		</li>
		<!-- END breadcrumbs -->
		<div class="loading-indicator pull-right" done="0" style="display:none;">
			<i class="fa fa-refresh fa-spin"></i>
		</div>
	</ol>