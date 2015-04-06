

<!-- IF privileges.view_thread_tools -->
<!-- IF privileges.editable -->
<span class="thread-tools btn-group">
	<button class="btn btn-exodo dropdown-toggle" data-toggle="dropdown" type="button">Mod <span><i class="fa fa-fw fa-gear"></i></span></button>
	<ul class="dropdown-menu pull-right">
		
		<li><a href="#" class="markAsUnreadForAll"><i class="fa fa-fw fa-inbox"></i> [[topic:thread_tools.markAsUnreadForAll]]</a></li>
		<li><a href="#" class="pin_thread"><i class="fa fa-fw fa-thumb-tack"></i> [[topic:thread_tools.pin]]</a></li>
		<li><a href="#" class="lock_thread"><i class="fa fa-fw fa-lock"></i> [[topic:thread_tools.lock]]</a></li>
		<li class="divider"></li>
		<li><a href="#" class="move_thread"><i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move]]</a></li>
		<li><a href="#" class="fork_thread"><i class="fa fa-fw fa-code-fork"></i> [[topic:thread_tools.fork]]</a></li>
		<li class="divider"></li>
		<li><a href="#" class="delete_thread"><span class="text-error"><i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete]]</span></a></li>
		<li><a href="#" class="purge_thread <!-- IF !deleted -->hidden<!-- ENDIF !deleted -->"><span class="text-error"><i class="fa fa-fw fa-eraser"></i> [[topic:thread_tools.purge]]</span></a></li>
		
		<!-- BEGIN thread_tools -->
		<li>
			<a href="#" class="{thread_tools.class}"><i class="fa fa-fw {thread_tools.icon}"></i> {thread_tools.title}</a>
		</li>
		<!-- END thread_tools -->
	</ul>
</span>
<!-- ENDIF privileges.editable -->
<!-- ENDIF privileges.view_thread_tools -->