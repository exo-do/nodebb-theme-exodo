	</div><!--END container -->

	<!-- IMPORT partials/modals/upload_picture_modal.tpl -->

	<div class="topic-search hidden">
		<div class="btn-group">
			<button type="button" class="btn btn-default count"></button>
			<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>
	<div class="alert-window alert-left-top"></div>
	<div class="alert-window alert-left-bottom"></div>
	<div class="alert-window alert-right-top"></div>
	<div class="alert-window alert-right-bottom"></div>

	<div id="footer" class="floatcontainer footer">
		<!--<ul class="footer_links left">
			<li><a href="#">Ir Arriba</a>  |  </li>
			<li></li>
		</ul>
	
		<ul class="footer_links">
			<li><a href="#">Contacta con nosotros</a>  |  </li>
			<li><a href="/admin">Panel de Administración</a>  |  </li>
			<li><a href="#">Política de cookies</a>  |  </li>
			<li><a href="#">Ir Arriba</a></li>
		</ul> 
		-->
		<!-- Include Font Awesome Stylesheet in Header -->
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		<!-- // -->
		<div>
		        <div class="text-center center-block visible-xs visible-sm">
						<a href="#" class="scrollup pull-left"><i class="fa fa-chevron-circle-up fa-2x scrollup-ic social"></i></a>
		                <a href="#" onclick="darkMode()"><i class="fa fa-adjust fa-2x social-ng social "></i></a>
						<a href="https://www.facebook.com/pages/Exodo/881300971914436" target="_blank"><i class="fa fa-facebook-square fa-2x social-fb social"></i></a>
			            <a href="https://twitter.com/exodo" target="_blank"><i class="fa fa-twitter-square fa-2x social-tw social"></i></a>
			            <a href="https://plus.google.com" target="_blank"><i class="fa fa-google-plus-square fa-2x social-gp social"></i></a>
			            <a href="mailto:contacto@exo.do" target="_blank"><i class="fa fa-envelope-square fa-2x social-em social"></i></a>
						<a href="#" class="scrollup pull-right"><i class="fa fa-chevron-circle-up fa-2x scrollup-ic social"></i></a>
				</div>
				
		        <div class="text-center center-block hidden-xs hidden-sm">
						<a href="#" class="scrollup pull-left"><i class="fa fa-chevron-circle-up fa-3x scrollup-ic social"></i></a>
		                <a href="#" onclick="darkMode()"><i class="fa fa-adjust fa-3x social-ng social "></i></a>
						<a href="https://www.facebook.com/pages/Exodo/881300971914436" target="_blank"><i class="fa fa-facebook-square fa-3x social-fb social"></i></a>
			            <a href="https://twitter.com/exodo" target="_blank"><i class="fa fa-twitter-square fa-3x social-tw social"></i></a>
			            <a href="https://plus.google.com" target="_blank"><i class="fa fa-google-plus-square fa-3x social-gp social"></i></a>
			            <a href="mailto:contacto@exo.do" target="_blank"><i class="fa fa-envelope-square fa-3x social-em social"></i></a>
						<a href="#" class="scrollup pull-right"><i class="fa fa-chevron-circle-up fa-3x scrollup-ic social"></i></a>
				</div>
				
		</div>
		      
	</div>
	
	
	<script>
	$(document).ready(function () {

	    $('.scrollup').click(function () {
	        $("html, body").animate({
	            scrollTop: 0
	        }, 600);
	        return false;
	    });

	});
	</script>
	
	
	<script>
		require(['forum/footer']);

		function darkMode()
		{
			if(localStorage.darkMode && localStorage.darkMode === "1")
			{
				app.alert({
					type: 'success',
					timeout: 3000,
					title: 'Modo Noche Desactivado',
					message: "Que la luz te guíe",
					alert_id: 'darkMode'
				});
				$("*").removeClass("dark");
				localStorage.darkMode = "0";
			}
			else
			{
				app.alert({
					type: 'success',
					timeout: 3000,
					title: 'Modo Noche Beta',
					message: "En modo pruebas, aun falta pulirlo :)",
					alert_id: 'darkMode'
				});
				$("*").addClass("dark");
				localStorage.darkMode = "1";
			}
		}
	</script>
	
	
	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-62345735-1', 'auto');
  ga('send', 'pageview');

	</script>
</body>
</html>
