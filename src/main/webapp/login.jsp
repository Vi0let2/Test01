<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>let's Login with jinkuang</title>
</head>
<body>
	<div class="container">
		<div class="row" style="margin-top: 30px">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<span class="glyphicon glyphicon-user"></span>login
					</div>
					<div class="panel-body">
						<form action="check_login.jsp" method="POST" name="loginForm">
							<div class="form-group">
								<label for="name">username</label> <input type="text"
									class="form-control" name="name" placeholder="please type username">
							</div>
							<div class="form-group">
								<label for="">password</label> <input type="password"
									class="form-control" name="pwd" placeholder="please type password">
							</div>
							<button type="submit" class="btn btn-primary"
								onclick="return checkForm()">login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	function checkForm() {
		var name = loginForm.name.value;
		var pwd = loginForm.pwd.value;
		//alert(name + pwd);
		if (name == "" || name == null) {
			alert("username");
			loginForm.name.focus();
			return false;
		} else if (pwd == "" || pwd == null) {
			alert("password");
			loginForm.pwd.focus();
			return false;
		}
		return true;
	}
</script>
</html>
