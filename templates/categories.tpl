<div id="motdDiv" class="motd col-lg-6 col-md-6 col-xs-12" style="display:none;"> <div widget-area="motd"> </div> </div>

<div id="categoriesDiv" class="row categories" style="display:none;" itemscope itemtype="http://www.schema.org/ItemList">
	<div widget-area="sidebar" class="col-lg-8 col-md-8 col-sm-12 col-xs-12 side"></div>
	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 tiles" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
		
		<div class="row <!-- IF !disableMasonry -->masonry<!-- ENDIF !disableMasonry -->">
			<!-- BEGIN categories -->
				
			<div component="categories/category" class="{categories.class}" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
				
				<meta itemprop="name" content="{categories.name}">
	
				<!--animated zoomIn -->
				<div class="category-icon">

					<!-- IF categories.link -->
					<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
					<!-- ELSE -->
					<a style="color: {categories.color};" href="{config.relative_path}/category/{categories.slug}" itemprop="url" title="{categories.description}">
					<!-- ENDIF categories.link -->
					<div id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}" style="background-image: linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.2)), url({categories.backgroundImage}); <!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor --> border-top: 6px solid {categories.bgColor}">
						
					<!-- IF categories.icon -->
					<span class="icon" style="<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->">
						<i class="fa {categories.icon}"></i><span class="category-title"> {categories.name}</span>
					</span>
					<!-- ENDIF categories.icon -->
					<div class="user-badge-nav hidden-xs" style="<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->">
						<span>
							<i class="fa fa-pencil" title="[[global:posts]]"><span class="human-readable-number" style="padding-left:5px;" title="{categories.numRecentReplies}"></span></i>
						</span>
						<span>
							<i class="fa fa-comments" data-toggle="tooltip" title="[[global:topics]]"><span class="human-readable-number" style="padding-left:5px;" title="{categories.totalTopicCount}"></span></i>
						</span>
								</div>
							</div>
					</a>
					</div>
				</div>
				<!-- END categories -->
			</div>
		</div>

	</div>

	<script type="text/javascript">

	$(window).on('action:ajaxify.end', function(event, data) {
    
		// Add categories and widgets
		$("#categoriesDiv").show();
		$("#motdDiv").show();

		// Hide Loading text
		//$("#loadingInfo").hide();

		// Add darkMode when loaded
		if(localStorage.darkMode && localStorage.darkMode === "1")
		{
			$("*").addClass("dark");
		}
		else
		{
			$("*").removeClass("dark");
		}
	});

	</script>