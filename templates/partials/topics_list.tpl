	<!-- IF topics.length -->
	<div class="category-topics">
		<div class="threadlisthead">
		<span class="threadinfo">
			<span class="threadtitle">
				<a>Título</a> /
				<a>Autor</a>
			</span>
		</span>
		<span class="threadstats hidden-xs"><a>Respuestas</a> / <a>Visitas</a></span>
		<span class="threadlastpost hidden-xs"><a>Último mensaje</a></span>
		</div>
	</div>
	<!-- ENDIF topics.length -->

<ul class="category-topics" id="topics-container" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
		
	<meta itemprop="itemListOrder" content="descending">
	
	<!-- BEGIN topics -->
	<li class="category-item<!-- IF topics.ignored --> ignored<!-- ENDIF topics.ignored --><!-- IF topics.locked --> locked<!-- ENDIF topics.locked --><!-- IF topics.pinned --> pinned<!-- ENDIF topics.pinned --><!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.userParticipated --> participated<!-- ENDIF topics.userParticipated --><!-- IF topics.isHot --> hot<!-- ENDIF topics.isHot --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread -->" itemprop="itemListElement" data-tid="{topics.tid}" data-cid="{topics.cid}" data-index="<!-- IF topics.index -->{topics.index}<!-- ELSE -->0<!-- ENDIF topics.index -->">
		<div class="panel panel-default topic-row clearfix">
			<div class="threadinfo">
                <a class="hidden-xs" href="<!-- IF topics.user.userslug -->
					{relative_path}/topic/{topics.slug}
					<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">
                    <img src="{user.picture}" class="profile-image user-img"/>
                </a>
				<h3>
					<a href="{relative_path}/topic/{topics.slug}" itemprop="url">
						<meta itemprop="name" content="{topics.title}">

						<span class="topic-title <!-- IF !loggedIn --> regular <!-- ENDIF !loggedIn -->"><i class="fa fa-thumb-tack<!-- IF !topics.pinned --> hide<!-- ENDIF !topics.pinned -->">&nbsp;</i><i class="fa fa-lock<!-- IF !topics.locked --> hide<!-- ENDIF !topics.locked -->">&nbsp;</i>{topics.title}</span>
					</a>
				</h3>

				<small>
					<a href="<!-- IF topics.user.userslug -->
					{relative_path}/user/{topics.user.userslug}
					<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">
					<span class="visible-xs pull-left"><img class="user-pic" src="{user.picture}"/>&nbsp;</span>{topics.user.username}</a> 
					<!-- IF template.category --><!-- ELSE -->
					<a href="{relative_path}/category/{topics.category.slug}" class="categoryNameOnTopicInfo"> | {topics.category.name}</a>
					 <!-- ENDIF template.category -->
				</small>
				
				<dl class="threadpagination" data-pages="{topics.pagesCount}"><dd></dd></dl>
				
				<div class="threaddetails">
					
					
					<i class="fa fa-fire<!-- IF !topics.isHot -->  hide<!-- ENDIF !topics.isHot -->" title="Tema Popular">&nbsp;</i>
					
					<!-- IF topics.tags.length -->
					<i class="fa fa-tags" title="<!-- BEGIN tags -->[{topics.tags.value}] <!-- END tags -->">&nbsp;</i>
					<!-- ENDIF topics.tags.length -->
					
					<i class="fa fa-pencil<!-- IF !topics.userParticipated -->  hide<!-- ENDIF !topics.userParticipated -->" title="Has participado en este tema">&nbsp;</i>
					
					<a href="{function.goLastPostButton}"><i class="fa fa-sign-in" title="Ir al ultimo post No Leido">&nbsp;</i></a>
				</div>
                
                <div class="threadlastpost visible-xs pull-right text-right">
                    <!-- IF topics.unreplied -->
                    [[category:no_replies]]
                    <!-- ELSE -->
					<!-- <span class="pull-left"> {topics.postcount} / {topics.viewcount}</span> -->
                    <a href="<!-- IF topics.teaser.user.userslug -->{relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->"> {topics.teaser.user.username} </a> 
					<a href="{relative_path}/topic/{topics.slug}/{topics.teaser.index}" title="Ir al último mensaje" class="lastpost"><span>{function.humanReadableDateLast}</span> <i class="fa fa-long-arrow-right"></i></a>
                    <!-- ENDIF topics.unreplied -->
                </div>
			</div>
			<ul class="threadstats hidden-xs"> 
				<li>[[global:posts]]: {topics.postcount}</li>
				<li>[[global:views]]: {topics.viewcount}</li>
			</ul>
			
			<dl class="threadlastpost hidden-xs">
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
					<a href="{relative_path}/topic/{topics.slug}/{topics.teaser.index}" title="Ir al último mensaje" class="lastpost"><span>{function.humanReadableDateLast}</span> <i class="fa fa-long-arrow-right"></i></a>
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
