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
		<ul class="footer_links left">
			<li><a href="#">Ir Arriba</a>  |  </li>
			<li><a href="#" onclick="darkMode()">Modo Noche</a></li>
		</ul>
	
		<ul class="footer_links">
			<li><a href="#">Contacta con nosotros</a>  |  </li>
			<li><a href="/admin">Panel de Administración</a>  |  </li>
			<li><a href="#">Política de cookies</a>  |  </li>
			<li><a href="#">Ir Arriba</a></li>
		</ul>       
	</div>
	
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
					message: "La luz te guía",
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
					title: 'Modo Noche Activado',
					message: "Ahora eres un ninja",
					alert_id: 'darkMode'
				});
				$("*").addClass("dark");
				localStorage.darkMode = "1";
			}
		}
	</script>
</body>
</html>