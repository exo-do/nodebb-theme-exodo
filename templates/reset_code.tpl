<!-- IMPORT partials/breadcrumbs.tpl -->

<!-- IF valid -->
<div class="well">
	<div class="alert alert-success" id="success" style="display:none">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<strong>[[reset_password:password_changed.title]]</strong>
		<p>[[reset_password:password_changed.message]]</p>
	</div>
	<div class="alert alert-warning" id="notice" style="display:none">
		<strong></strong>
		<p></p>
	</div>
	<form onsubmit="return false;" id="reset-form" class="row">
		<div class="col-sm-6">
			<label for="password">[[reset_password:new_password]]</label>
			<input class="form-control" type="password" placeholder="[[reset_password:new_password]]" id="password" /><br />
		</div>
		<div class="col-sm-6">
			<label for="repeat">[[reset_password:repeat_password]]</label>
			<input class="form-control" type="password" placeholder="[[reset_password:repeat_password]]" id="repeat" /><br />
		</div>

		<button class="btn btn-primary btn-block" id="reset" type="submit">[[reset_password:reset_password]]</button>
	</form>
</div>
<input type="hidden" template-variable="reset_code" value="{code}" />
<!-- ELSE -->
<div class="panel panel-default panel-danger">
	<div class="panel-heading">
		<h3 class="panel-title">[[reset_password:wrong_reset_code.title]]</h3>
	</div>
	<div class="panel-body">
		<p>[[reset_password:wrong_reset_code.message]]</p>
	</div>
</div>
<!-- ENDIF valid -->