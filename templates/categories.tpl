<div class="motd col-lg-6 col-xs-12">
	<div widget-area="motd"></div>
</div>

<div class="row home" itemscope itemtype="http://www.schema.org/ItemList">
	<div id="pad" class="col-lg-6 col-sm-12" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
		<!-- BEGIN categories -->
		<div class="category {categories.class} padding15" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">

			<meta itemprop="name" content="{categories.name}">

			<!-- IF categories.link -->
			<div id="category-{categories.cid}" title="{categories.description}">
				<h4 class="category-title">
					<i class="fa {categories.icon}"></i>
						{categories.name}
				</h4>
			</div>
			<!-- ELSE -->
			<div class="category-box">
				<a id="category-{categories.cid}"  href="{relative_path}/category/{categories.slug}" class="category-header category-header-image-{categories.imageClass}" style="background-image: linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.8)), url({categories.backgroundImage});
											<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->">
					<h3 class="category-title">
						<i class="fa {categories.icon}"></i>
						<p>{categories.name}</p>
					</h3>
				</a>
				<div class="category-info hidden-xs">
					<div class="category-stats">
						<b>Temas:</b> {categories.topic_count} | <b>Mensajes:</b> {categories.post_count}
					</div>
					<div class="category-last-topic">
						<!-- BEGIN posts -->
						<!-- IF @first -->
						<a class="italic last-topic-title" href="topic/{categories.posts.topic.slug}/{categories.posts.index}">{categories.posts.topic.title}</a>
						<span class="last-topic-date">{function.humanReadableDate}</span>
						<!-- ENDIF @first -->
						<!-- END posts -->
					</div>
				</div>
			</div>
			<!-- ENDIF categories.link -->
		</div>
		<!-- END categories -->
	</div>

	<div widget-area="sidebar" class="sidebar col-lg-6 col-sm-12"></div>
</div>