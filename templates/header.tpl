<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{css-buster}" />
	<!-- BEGIN linkTags -->
	<link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
	<!-- END linkTags -->

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{configJSON}');
		var app = {};
		app.user = JSON.parse('{userJSON}');
	</script>
	<script src="{relative_path}/nodebb.min.js?{script-buster}"></script>
	<script>
		require.config({
			baseUrl: "{relative_path}/src/modules",
			waitSeconds: 3,
			urlArgs: "{cache-buster}",
			paths: {
				'forum': '../forum',
				'vendor': '../../vendor'
			}
		});
	</script>

	<!-- IF useCustomJS -->
	{customJS}
	<!-- ENDIF useCustomJS -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{customCSS}</style>
	<!-- ENDIF useCustomCSS -->

</head>

<body>
	<div id="header">
		<div id="top_header">
			<div id="globalsearch">
				<form action="" method="get" id="search-form">
					<input value="" name="query" class="textbox" tabindex="99" type="text">
					<input class="searchbutton" name="submit" tabindex="100" type="submit">
				</form>
			</div>
			
			<ul class="advanced_search">
				<li><a href="#">Búsqueda avanzada</a></li>	
			</ul>

			<div id="toplinks">
				<!-- IF loggedIn -->
				<ul class="isuser">
					<li id="logout-link"><a href="#">[[global:logout]]</a></li>
					<li><a href="{relative_path}/user/{user.userslug}/settings">Ajustes</a></li>
					<li><a href="{relative_path}/user/{user.userslug}/edit">Mi perfil</a></li>
					<li class="welcomelink">Hola, <a href="{relative_path}/user/{user.userslug}">{user.username}</a></li>
				</ul>
				<!-- ELSE -->
				<ul class="nouser">	
					<li><a href="{relative_path}/register"><span>[[global:register]]</span></a></li>
					<li>|</li>
					<li><a href="{relative_path}/login"><span>[[global:login]]</span></a></li>
				</ul>
				<!-- ENDIF loggedIn -->
			</div>
		</div>
		
		<div id="middle_header">
			<a name="top" href="/" class="logo-image">
				<img title="Éxodo" src="https://exo.do/images/exodo/misc/logo.png" alt="Éxodo">
			</a>
			<div id="navbar">
				<ul id="navtabs">
					<li>
						<a class="navtab" href="#"><span>Actividad</span></a>
					</li>
					<li class="selected">
						<a class="navtab" href="#"><span>Comunidad</span></a>
					</li>

				</ul>
			</div>
		</div>
	</div>
	
	<div id="navbar-wrapper">
		<div class="navbar navbar-inverse header" role="navigation" id="header-menu" data-spy="affix" data-offset-top="188">
			<div class="loading-bar"></div>
			<div class="container-fluid">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</div>
	</div>
		
	<div class="container-fluid" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->