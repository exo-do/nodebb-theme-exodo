<div class="motd col-lg-6 col-md-6 col-sm-12 col-xs-12">
	<div widget-area="motd"></div>
</div>

<div class="row home categories" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 clearfix" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
	<!-- BEGIN categories -->
		<div class="{categories.class}" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
			<meta itemprop="name" content="{categories.name}">
			

			<!-- IF categories.link -->
			<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
			<!-- ELSE -->
			<a style="color: {categories.color};" href="{relative_path}/category/{categories.slug}" itemprop="url">
			<!-- ENDIF categories.link -->
				<div
					id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}"
					title="{categories.description}"
					style="
						<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
						<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
					"
				>
					<div id="category-{categories.cid}" class="category-slider-{categories.post_count}">
						
						<!--<div class="category-box" itemprop="description">{categories.description}</div> -->
						<h3 class="category-title">
							<!-- IF categories.icon -->
							<div class="category-box"><i class="fa {categories.icon}"></i></div>
							<!-- ENDIF categories.icon -->
							<!-- IF !categories.link -->
							<span class="badge {categories.unread-class}">{categories.topic_count} </span>
							<!-- ENDIF !categories.link -->	

							<!-- IF categories.link -->
							<a href="{categories.link}" itemprop="url" target="_blank">
							<!-- ELSE -->
							<a href="{relative_path}/category/{categories.slug}" itemprop="url">
							<!-- ENDIF categories.link -->
							{categories.name}
							</a>
						</h3>
						<!-- BEGIN posts -->
						<div class="category-box">
							 <div class="post-preview">
								<!-- ><img src="{categories.posts.user.picture}" class="pull-left" /> -->
								<!-- ><p class=""><strong>{categories.posts.user.username}</strong>: {categories.posts.content}</p> -->
								<!-- ><p class=""><strong>{categories.posts.slug}</strong></p> -->
							</div>
								
						</div>
						<!-- END posts -->
						<!-- IF categories.icon -->
						<!-- ><div class="category-box"><i class="fa {categories.icon} fa-4x"></i></div> -->
						<!-- ENDIF categories.icon -->
					</div>
				</div>
			</a>
		</div>
		<!-- END categories -->	
</div>

<div widget-area="sidebar" class="col-lg-5 col-md-5 col-sm-12 col-xs-12"></div>
</div>











<!--
<div class="motd col-lg-6 col-md-6 col-sm-12 col-xs-12">
	<div widget-area="motd"></div>
</div>

<div class="row home" itemscope itemtype="http://www.schema.org/ItemList">
	<div id="pad" class="col-lg-7 col-md-7 col-sm-12 col-xs-12" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
		

		<div widget-area="homecenter" class="sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12" id="homecenterwidget"></div>

	</div>

	<div id="sidebar" widget-area="sidebar" class="sidebar col-lg-5 col-md-5 col-sm-12 col-xs-12"></div>
</div>


<div class="clearfix"></div>
<div class="row home" itemscope itemtype="http://www.schema.org/ItemList">
	<div id="pad" class="col-lg-7 col-md-7 col-sm-12 col-xs-12" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
		

		<div widget-area="homecenter2" class="sidebar col-lg-12 col-md-12 col-sm-12 col-xs-12" id="homecenterwidget"></div>

	</div>

<div id="sidebar" widget-area="sidebar2" class="sidebar col-lg-5 col-md-5 col-sm-12 col-xs-12"></div>
</div>
-->