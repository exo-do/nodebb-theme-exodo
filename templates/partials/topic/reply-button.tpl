<!-- IF loggedIn -->

<div class="btn-group">
	<button component="topic/reply" class="btn btn-exodo <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->"><span class="hidden-xs">[[topic:reply]]</span><span class="exright">+</span></button>
	<!-- IF !privileges.topics:reply -->
	<!-- IF locked -->
	<button component="topic/reply/locked" class="btn btn-exodo disabled"><span class="hidden-xs">[[topic:locked]]</span><span class="exright"><i class="fa fa-lock"></i></span></button>
	<!-- ENDIF locked -->
	<!-- ENDIF !privileges.topics:reply -->
</div>

<!-- ELSE -->

<!-- IF !privileges.topics:reply -->
<a href="{config.relative_path}/login" class="btn btn-exodo">[[topic:guest-login-reply]]<span class="exright">+</span></a>
<!-- ENDIF !privileges.topics:reply -->

<!-- ENDIF loggedIn -->


