<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Đăng nhập</title>

  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">
  <link href="../css/sb-admin-2.css" rel="stylesheet">
  	<link rel="stylesheet" href="../css/style_login.css" type="text/css" media="all" /><!-- Style-CSS -->
  
</head>

<body >

 <section class="w3l-form-36">
		<div class="form-36-mian section-gap">
			<div class="wrapper">
				<div class="form-inner-cont">
				<a href="home.htm"><span><img src="../images/logo-01.png" style="width: 100px; height: 100px;bottom: 0.5px;margin-left: 110px;"></span></a>
					<h3 style="text-align: center; font-weight: bold; font-size: x-large;">Đăng nhập với tài <br>khoản nhân viên</h3>
					<form action="login.htm" method="post">
						<div class="form-input">
							<span class="fa fa-envelope-o" aria-hidden="true"></span> <input type="text" name="phone"
								placeholder="SDT"  required />
						</div>
						<div class="form-input">
							<span class="fa fa-key" aria-hidden="true"></span> <input type="password" name="password" placeholder="Mật khẩu"  required="required" />
						</div>
						<div class="form-group">
                      <div>
                        <label style="color: red;font-style: italic;font-size: 20px">${message}</label>
                      </div>
                    </div>
						<div class="login-remember d-grid">
							<label class="check-remaind">
								<input type="checkbox">
								<span class="checkmark"></span>
								<p class="remember">Remember me</p>
							</label>
							<button type="submit" class="btn theme-button">Login</button>
						</div>
						<div class="new-signup">
							<a href="../client/loginCustomer.htm" class="signuplink">Đăng nhập với tài khoản khách hàng</a>
						</div>
						<div class="new-signup">
							<a href="../client/forgot-password.htm" class="signuplink">Quên mật khẩu?</a>
						</div>
					</form>
					<!-- <div class="social-icons">
						<p class="continue"><span>Or</span></p>
						<div class="social-login">
							<a href="#facebook">
								<div class="facebook">
									<span class="fa fa-facebook" aria-hidden="true"></span>

								</div>
							</a>
							<a href="#google">
								<div class="google">
									<span class="fa fa-google-plus" aria-hidden="true"></span>
								</div>
							</a>
						</div>
					</div> -->
					<p class="signup">Don’t have an account? <a href="../client/create-account.htm" class="signuplink">Đăng ký tài khoản!</a></p>
				</div>

				<!-- copyright -->
			<!-- 	<div class="copy-right">
					<p>© 2020 Active Login Form. All rights reserved | Design by <a href="http://w3layouts.com/"
							target="_blank">W3Layouts</a></p>
				</div> -->
				<!-- //copyright -->
			</div>
		</div>
	</section>

  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>

</body>

</html>
