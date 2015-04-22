<!-- IF privileges.editable -->
<span class="btn-group thread-tools"> 
	<button class="btn btn-sm btn-default btn-exodin visible-xs" data-toggle="dropdown" type="button"> Mod <span><i class="fa fa-bolt"></i></span></button>
	<button class="btn btn-exodo hidden-xs" data-toggle="dropdown" type="button"> Mod <span><i class="fa fa-bolt"></i></span></button>
	

  <ul class="dropdown-menu pull-left">
    <li><a href="#" class="markAsUnreadForAll"><i class="fa fa-fw fa-inbox"></i> Marcar no leido</a></li>
    <li><a href="#" class="pin_thread"><i class="fa fa-fw fa-thumb-tack"></i> [[topic:thread_tools.pin]]</a></li>
    <li><a href="#" class="lock_thread"><i class="fa fa-fw fa-lock"></i> [[topic:thread_tools.lock]]</a></li>
    <li class="divider"></li>
    <li><a href="#" class="move_thread"><i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move]]</a></li>
    <li><a href="#" class="move_all_threads"><i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move_all]]</a></li>
    <li class="divider"></li>
    <li><a href="#" class="delete_thread"><span><i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete]]</span></a></li>
    <li><a href="#" class="purge_thread <!-- IF !deleted -->hidden<!-- ENDIF !deleted -->"><span><i class="fa fa-fw fa-eraser"></i> [[topic:thread_tools.purge]]</span></a></li>
    <!-- BEGIN thread_tools -->
    <li>
      <a href="#" class="{thread_tools.class}"><i class="fa fa-fw {thread_tools.icon}"></i> {thread_tools.title}</a>
    </li>
		
    <!-- END thread_tools -->
  </ul>
</span> 
<!-- ENDIF privileges.editable -->