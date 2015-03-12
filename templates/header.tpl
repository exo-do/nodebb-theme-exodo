<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{css-buster}" />
	<!-- IF bootswatchCSS --><link href="{bootswatchCSS}" rel="stylesheet" media="screen"><!-- ENDIF bootswatchCSS -->
	<!-- BEGIN linkTags -->
	<link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
	<!-- END linkTags -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{customCSS}</style>
	<!-- ENDIF useCustomCSS -->
	
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
		<!--
		<div id="middle_header">
			
			<div class="tile selected">
				<a class="exodo-community" href="#"><span>Comunidad</span></a>
			</div>
			<div class="tile">
				<a class="exodo-activity" href="#"><span>Actividad</span></a>
			</div>
			
			<div class="col-header">
				<a name="top" href="/" class="logo-image"></a>
			</div>
		</div>
		-->
	</div>
	
	<div id="navbar-wrapper">
		<div class="navbar navbar-inverse header" role="navigation" id="header-menu">
			<div class="loading-bar"></div>
			<div class="container-fluid">
				<a name="top" href="/" class="pull-left logo-image">
					<img src="http://i.imgur.com/AcFXnik.png" with="100" height="13"/>
				</a>
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</div>
	</div>
		
	<div class="container-fluid" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->
