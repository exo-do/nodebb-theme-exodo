<ul class="category-topics" id="topics-container" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
	<!-- IF topics.length -->
	<div class="threadlisthead">
		<span class="threadinfo">
			<span class="threadtitle">
				<a>Título</a> /
				<a>Autor</a>
			</span>
		</span>
		<span class="threadstats hidden-xs"><a>Posts</a> / <a>Visitas</a></span>
		<span class="threadlastpost"><a>Último mensaje</a></span>
	</div>
	<!-- ENDIF topics.length -->
	<meta itemprop="itemListOrder" content="descending">
	<!-- BEGIN topics -->
	<li class="category-item<!-- IF topics.locked --> locked<!-- ENDIF topics.locked --><!-- IF topics.pinned --> pinned<!-- ENDIF topics.pinned --><!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.userParticipated --> participated<!-- ENDIF topics.userParticipated --><!-- IF topics.isHot --> hot<!-- ENDIF topics.isHot --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread -->" itemprop="itemListElement" data-tid="{topics.tid}" data-cid="{topics.cid}" data-index="<!-- IF topics.index -->{topics.index}<!-- ELSE -->0<!-- ENDIF topics.index -->">
		<div class="panel panel-default topic-row clearfix">
			<div class="threadinfo">
				<a class="threadstatus"></a>
				<h3>
					<a href="{relative_path}/topic/{topics.slug}" itemprop="url">
						<meta itemprop="name" content="{topics.title}">

						<strong><i class="fa fa-thumb-tack<!-- IF !topics.pinned --> hide<!-- ENDIF !topics.pinned -->"></i> <i class="fa fa-lock<!-- IF !topics.locked --> hide<!-- ENDIF !topics.locked -->"></i></strong>
						<span class="topic-title">{topics.title}</span>
					</a>
				</h3>

				<small>
					Iniciado por <a href="<!-- IF topics.user.userslug -->
					{relative_path}/user/{topics.user.userslug}
					<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">
					{topics.user.username}</a>, <!--[[global:posted_ago,--> <span class="timeago" title="{topics.relativeTime}"></span><!--]]-->
					<!-- IF template.category --><!-- ELSE -->
					 en <a href="{relative_path}/category/{topics.category.slug}">{topics.category.name}</a><!-- ENDIF template.category -->
				</small>
				
				<dl class="threadpagination" data-pages="{topics.pagesCount}"><dd></dd></dl>
				
				<div class="threaddetails">
					<!-- IF topics.tags.length -->
					<img title="<!-- BEGIN tags -->[{topics.tags.value}] <!-- END tags -->" src="http://exo.do/images/exodo/misc/tag.png" alt="<!-- BEGIN tags -->[{topics.tags.value}] <!-- END tags -->">
					<!-- ENDIF topics.tags.length -->
				</div>
			</div>
			<ul class="threadstats hidden-xs"> 
				<li>[[global:posts]]: {topics.postcount}</li>
				<li>[[global:views]]: {topics.viewcount}</li>
			</ul>
			
			<dl class="threadlastpost">
				<!-- IF topics.unreplied -->
				<dd class="unreplied">
					[[category:no_replies]]
				</dd>
				<!-- ELSE -->
				<dd>
					<img class="user-pic" src="{topics.teaser.user.picture}" />&nbsp;
					<a href="<!-- IF topics.teaser.user.userslug -->{relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">
						{topics.teaser.user.username}
					</a>
					
				</dd>
				<dd>
					<!--[[global:replied_ago,--> <a href="{relative_path}/topic/{topics.slug}/{topics.teaser.index}" title="Ir al último mensaje" class="lastpost"><span class="timeago" style="color:black" title="{topics.teaser.timestamp}"></span> →</a> <!-- ]] -->
				</dd>
				<!-- ENDIF topics.unreplied -->
			</dl>
			<!-- IF privileges.editable -->
			<label class="threadimod hidden-xs">
				<i class="fa fa-fw fa-square-o select pointer"></i>
			</label>
			<!-- ENDIF privileges.editable -->
			<!-- IF showSelect -->
			<label class="threadimod hidden-xs">
				<i class="fa fa-fw fa-square-o select pointer"></i>
			</label>
			<!-- ENDIF showSelect -->
		</div>
	</li>
	<!-- END topics -->
</ul>
