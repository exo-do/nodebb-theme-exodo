<div id="motdDiv" class="motd col-lg-6 col-md-6 col-xs-12" style="display:none;">
	<div widget-area="motd">
	</div>
</div>

<div id="categoriesDiv" class="row categories" style="display:none;" itemscope itemtype="http://www.schema.org/ItemList">
	
	<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
		
		<div class="row <!-- IF !disableMasonry -->masonry<!-- ENDIF !disableMasonry -->">
			<!-- BEGIN categories -->
			<div class="<!-- IF categories.class -->{categories.class}<!-- ELSE -->col-md-3 col-sm-6 col-xs-12<!-- ENDIF categories.class --> category-item" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
				<meta itemprop="name" content="{categories.name}">
	
				
				<div class="category-icon">

					<!-- IF categories.link -->
					<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
					<!-- ELSE -->
					<a style="color: {categories.color};" href="{relative_path}/category/{categories.slug}" itemprop="url">
					<!-- ENDIF categories.link -->
						<div
							id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}"
							style="background-image: linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.8)), url({categories.backgroundImage});
											<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->">
						
							<!-- IF categories.icon -->
							<h3 class="category-title">
								<i class="fa {categories.icon}"></i>
								<p>{categories.name}</p>
							</h3>
							
							<!-- ENDIF categories.icon -->
							
							<div class="category-info hidden-xs">
								<div class="category-stats text-right">
			                        <i class="fa fa-comments-o" title="Temas"></i> {categories.topic_count} · <i class="fa fa-pencil" title="Mensajes"></i> {categories.post_count}
			                    </div>
							</div>
						</div>
						</a>
						
							
						<!--	<span class="badge {categories.unread-class}"><i class="fa fa-book" data-toggle="tooltip" title="[[global:topics]]"></i> <span class="human-readable-number" title="{categories.topic_count}">{categories.topic_count}</span>&nbsp; <i class="fa fa-pencil" data-toggle="tooltip" title="[[global:posts]]"></i> <span class="human-readable-number" title="{categories.post_count}">{categories.post_count}</span></span>
							-->
		

					<div class="category-box hidden-xs">
						
						<!-- IF !categories.link -->
						<!-- BEGIN posts -->
						<div class="post-preview clearfix">
							
							<div class="last-topic-title"><a href="{relative_path}/topic/{categories.posts.topic.slug}">{categories.posts.topic.title}</a></div>
							<p class="last-topic-date">{function.humanReadableDate}</p>
							
							<!-- <a style="color: {categories.color};" href="<!-- IF categories.posts.user.userslug -->{relative_path}/user/{categories.posts.user.userslug}<!-- ELSE -->#<!-- ENDIF categories.posts.user.userslug-->">
								<img src="{categories.posts.user.picture}" title="{categories.posts.user.username}" class="pull-left user-img" />
							</a> -->
							<div class="post-preview-content">

								<!--<div class="content">
								{categories.posts.content}
								</div>
								-->
								<!--<p class="fade-out"></p> -->
							</div>

							<!-- <span class="pull-right post-preview-footer">
								<span class="timeago" title="{categories.posts.relativeTime}"></span> &bull;
								<a href="{relative_path}/topic/{categories.posts.topic.slug}<!-- IF categories.posts.index -->/{categories.posts.index}<!-- ENDIF categories.posts.index -->">[[global:read_more]]</a>
							</span> -->
						</div>
						<!-- END posts -->
						<!-- ENDIF !categories.link -->
					</div>
				</div>
			</div>
			<!-- END categories -->
		</div>
	</div>

	<div widget-area="sidebar" style="padding-top:5px; padding-left:5px; padding-right:5px;" class="col-lg-4 col-md-4 col-sm-12 col-xs-12"></div>
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