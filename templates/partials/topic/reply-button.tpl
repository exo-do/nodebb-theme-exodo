<div class="btn-group">
<button component="topic/reply" class="btn btn-exodo <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->"><span class="hidden-xs">[[topic:reply]]</span><span class="exright">+</span></button>

<!-- IF loggedIn -->

<!-- IF !privileges.topics:reply -->
<!-- IF locked -->
<button component="topic/reply/locked" class="btn btn-exodo disabled"><span class="hidden-xs">[[topic:locked]]</span><span class="exright"><i class="fa fa-lock"></i></span></button>
<!-- ENDIF locked -->
<!-- ENDIF !privileges.topics:reply -->

<!-- IF !locked -->
<!--<a component="topic/reply/locked" class="btn btn-exodo hidden" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>-->
<!-- ENDIF !locked -->

<!-- ELSE -->

<!-- IF !privileges.topics:reply -->
<a href="{config.relative_path}/login" class="btn btn-exodo">[[topic:guest-login-reply]]</a>
<!-- ENDIF !privileges.topics:reply -->

<!-- ENDIF loggedIn -->
</div>

