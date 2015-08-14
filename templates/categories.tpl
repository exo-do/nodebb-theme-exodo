<div id="motdDiv" class="motd col-lg-6 col-md-6 col-xs-12" style="display:none;"> <div widget-area="motd"> </div> </div>

<div id="categoriesDiv" class="row categories" style="display:none;" itemscope itemtype="http://www.schema.org/ItemList">
	<div widget-area="sidebar" class="col-lg-8 col-md-7 col-sm-12 col-xs-12 side"></div>
	<div class="col-lg-4 col-md-5 col-sm-12 col-xs-12" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
		
		<div class="row <!-- IF !disableMasonry -->masonry<!-- ENDIF !disableMasonry -->">
			<!-- BEGIN categories -->
				
				<div component="categories/category" class="{categories.class}" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
				
				<meta itemprop="name" content="{categories.name}">
	
				<div class="category-icon animated zoomIn">

					<!-- IF categories.link -->
					<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
					<!-- ELSE -->
					<a style="color: {categories.color};" href="{config.relative_path}/category/{categories.slug}" itemprop="url">
					<!-- ENDIF categories.link -->
						<div id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}" style="background-image: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)), url({categories.backgroundImage}); <!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor --> border-top: 6px solid {categories.bgColor}">
						
							<!-- IF categories.icon -->
							<span class="icon" style="<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->">
								<i class="fa {categories.icon}"></i><span class="category-title"> {categories.name}</span>
							</span>
							<!-- ENDIF categories.icon -->
						</div>
						</a>
						
						<!--	<span class="badge {categories.unread-class}"><i class="fa fa-book" data-toggle="tooltip" title="[[global:topics]]"></i> <span class="human-readable-number" title="{categories.topic_count}">{categories.topic_count}</span>&nbsp; <i class="fa fa-pencil" data-toggle="tooltip" title="[[global:posts]]"></i> <span class="human-readable-number" title="{categories.post_count}">{categories.post_count}</span></span>
							-->
							
						<!--<div component="category/posts" class="category-box hidden-xs">
				
			
							<!-- IF !categories.link -->
							<!-- BEGIN posts -->
							<div class="post-preview clearfix">
					
								<div class="last-topic-title"><a href="{config.relative_path}/topic/{categories.posts.topic.slug}">{categories.posts.topic.title}</a>
								<span class="last-topic-date">{function.humanReadableDate}</span>
								</div>
							</div>
							<!-- END posts -->
							<!-- ENDIF !categories.link -->
			
						</div>	
						-->
						<!--<div class=" corner-ribbon top-right sticky red shadow">
							<i class="fa {categories.icon}"></i>
						</div>
						-->
						
						<div class="user-badge-nav hidden-xs" style="<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->">
						    <a href="{config.relative_path}/category/{categories.slug}" itemprop="url"><span><i class="fa fa-pencil" title="[[global:posts]]"><span class="human-readable-number" style="padding-left:5px;" title="{categories.post_count}"></span></i></span></a>
							<a href="{config.relative_path}/category/{categories.slug}" itemprop="url"><span><i class="fa fa-comments" data-toggle="tooltip" title="[[global:topics]]"><span class="human-readable-number" style="padding-left:5px;" title="{categories.topic_count}"></span></i></span></a>
						</div>
						 
						<!--<div class="ribbon-wrapper-green">
							<div class="ribbon-green">
							<i class="fa {categories.icon}"></i>
							</div>
						</div>
						-->
						
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