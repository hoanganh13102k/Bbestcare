<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" b:version='2' class='v2' expr:dir='data:blog.languageDirection' xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b' xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>
<head>
<title>Bbestcare</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Child Care a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- default-css-files -->
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="../css/simpleLightbox.css" rel="stylesheet" type="text/css" />
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href="../css/font-awesome.css" rel="stylesheet" type="text/css"
	media="all">
<!-- default-css-files -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/simpleLightbox.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet" type="text/css"
	media="all">
<!-- default-css-files -->
<!-- Online fonts -->
<link
	href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<!-- //Online fonts -->



<base href="${pageContext.servletContext.contextPath}/">
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
	<style type="text/css">
		.body__preloader{position:fixed;z-index:9999;width:100%;height:100%;left:0;top:0;background-color:#ffffff;-webkit-transition:all .3s ease;-o-transition:all .3s ease;transition:all .3s ease;opacity:1;visibility:visible}
.body__preloader.loaded{opacity:0;visibility:hidden;z-index:-2}
#loading{display:block;position:relative;z-index:1001;left:50%;top:50%;width:150px;height:150px;margin:-75px 0 0 -75px;border-radius:50%;border:3px solid transparent;border-top-color:#3498db;-webkit-animation:spin 2s linear infinite;animation:spin 2s linear infinite}
#loading:before{content:"";position:absolute;top:5px;left:5px;right:5px;bottom:5px;border-radius:50%;border:3px solid transparent;border-top-color:#e74c3c;-webkit-animation:spin 3s linear infinite;animation:spin 3s linear infinite}
#loading:after{content:"";position:absolute;top:15px;left:15px;right:15px;bottom:15px;border-radius:50%;border:3px solid transparent;border-top-color:#f9c922;-webkit-animation:spin 1.5s linear infinite;animation:spin 1.5s linear infinite}
@-webkit-keyframes spin{0%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg)}}
@keyframes spin{0%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg)}}
	</style>
<style>
.datlichbtn {
	background-color: #17449e;
	border-radius: 5px;
	border: 2px solid #fff;
	padding: 0.4em 1.7em;
	color: white;
	text-align: center;
	margin: 4px 2px;
	opacity: 1;
	transition: 0.3s;
	font-weight: 500;
	letter-spacing: 0px;
	text-transform: capitalize;
	display: block;
	font-size: 1em;
}

.datlichbtn:hover {
	opacity: 0.6
}
/* .btn {
    display: inline-block;
    font-weight: 400;
    color: #212529;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-color: transparent;
    border: 1px solid transparent;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.25rem;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
} */

.dropbtn {
  color: #4D93E9;
  padding: 13px;
  font-size: 14px;
  font-weight: bolder;
  border: none;
  cursor: pointer;
font-family: 'Oxygen', sans-serif;  
}
.dropbtn:hover {
  color: #17449e;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  width: 150px;
  border-radius: 5px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: #17449e;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  font-weight: bolder;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}
.btn:hover{opacity: 0.6}
/* .dropdown:hover .dropbtn {
  background-color: #3e8e41;
} */
</style>
</head>
<!-- Head -->
<body>

<div class='body__preloader'>
   <div id="loading"></div>
</div>
	<!--header-section-starts-here-->
	<header>
		<div class="top-header" id="home">
			<div class="container">
				<div class="container">
					<nav class="navbar navbar-default">
						<div class="navbar-header navbar-left"></div>
						<div class="logo">
							<img src="images/logo-01.png"
								style="width: 50px; height: 50px; position: absolute; bottom: 0.5px;">
							<h1 style="float: left; padding-left: 60px;">
								<a class="navber-brand" href="client/home.htm"><i
									aria-hidden="true"></i> Bbestcare</a>
							</h1>

						</div>
						<div
							class="collapse navbar-collapse navbar-right navigation-right"
							id="bs-example-navbar-collapse-1">
							<nav class="link-effect-3 w3ls-navma" id="link-effect-3">
								<ul class="nav1 navbar-nav nav nav-wil">
									<li class="active"><a href="client/home.htm">Trang chủ</a></li>
									<li><a href="client/about.htm" class="">Giới thiệu</a></li>
									<li><a href="client/recruitment.htm">Tuyển dụng</a></li>
									<li><a href="client/rate.htm" class="">Đánh giá</a></li>
									<!-- <li><a href="client/loginCustomer.htm" class="">Đăng
											nhập</a></li> -->

									<li>
										<div class="dropdown">
											<h5 class="dropbtn">TÀI KHOẢN</h5>
											<div class="dropdown-content">
												<a style="color: #17449e;text-align: center;" href="client/profile/${user.phone}.htm">${user.fullname}</a>
												<button	style="width:100%;background-color:#f9f9f9; color: #17449e;font-weight: bolder;text-align: center;" type="submit" class="btn" onclick="dangnhap()">Đăng nhập</button>
												<button	style="width:100%;background-color:#f9f9f9; color: #17449e;font-weight: bolder;text-align: center;" type="submit" class="btn" onclick="dangky()">Đăng ký</button>
												<script>
 													function dangnhap() {
														location.assign("client/loginCustomer.htm");
													}
 													function dangky() {
														location.assign("client/create-account.htm");
													}
												</script>
												<form action="client/logout.htm" method="get">
												<button	style="width:100%;background-color:#f9f9f9; color: #17449e;font-weight: bolder;text-align: center;" type="submit" class="btn">Đăng xuất</button> 
												</form>
												
											</div>
										</div>
									</li>
									<li><form action="client/order/abcOrder.htm" method="get">
											<button type="submit" class="datlichbtn">Đặt lịch</button>
										</form></li>
								</ul>
							</nav>
						</div>
					</nav>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!--//header-section-end-here-->
	<!--banner-section-starts-here-->
	<section class="bannerhome jarallax" id="home">
		<div class="w3ls_banner_info">
			<div class="container">
				<div class="w3l-banner-grids">
					<div class="slider">
						<div class="callbacks_container">
							<ul class="rslides" id="slider4">
								<li>
									<div class="w3ls-text">
										<h3>Chăm sóc trẻ em</h3>
										<p>Chúng tôi cung cấp dịch vụ chăm sóc trẻ em tại nhà.</p>
									</div>
								</li>
								<li>
									<div class="w3ls-text">
										<h3>Phục vụ tận tình</h3>
										<p>Đội ngũ nhân viên chăm sóc tận tình chu đáo.</p>
									</div>
								</li>
								<li>
									<div class="w3ls-text">
										<h3>Chất lượng chăm sóc</h3>
										<p>Chất lượng nhân viên chăm sóc đảm bảo đã được kiểm
											duyệt kĩ càng.</p>
									</div>
								</li>
								<li>
									<div class="w3ls-text">
										<h3>Những ngày lễ</h3>
										<p>Những khung giờ đặc biệt cũng có nhân viên chăm sóc.</p>
									</div>
								</li>
							</ul>
						</div>

					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="w3-ban-pos"></div>
		<div class="w3-ban-pos12"></div>
	</section>
	<!-- Default-JavaScript-File -->
	<!--/about -->
	<div class="about" id="about">
		<div class="container">
			<!---728x90--->
			<div class="wthree-about">

				<div class="col-md-6 ab-w3l-text">
					<h2 style="color: #17449e; font-family: sans-serif; text-transform: uppercase;font-weight: bolder;">Giới
						thiệu</h2>
					<p>Sau 9 tháng 10 ngày mang nặng đẻ đau, nâng niu chăm sóc sức
						khỏe, đã đến ngày con chào đời đó là niềm hạnh phúc không thể diễn
						tả thành lời của mẹ. Bất cứ người làm mẹ nào đều mong muốn được tự
						tay chăm sóc con yêu của mình.Nhưng sau sinh mẹ có rất nhiều trở
						ngại: Cơ thể mẹ còn rất yếu, đi lại khó khăn. Mẹ chưa có nhiều
						kinh nghiệm trong việc chăm sóc trẻ sơ sinh. Con yêu còn quá nhỏ,
						rốn chưa rụng. Chính vì những trở ngại đó khiến mẹ lo lắng không
						biết phải làm sao để có thể tắm cho con yêu mỗi ngày để đảm bảo
						sức khỏe của con.Thấu hiểu những nỗi lòng ấy, BBESTCARE gửi đến các hộ gia đình
						dịch vụ tắm bé sơ sinh tại nhà giúp cho bé khỏe mẹ vui, mang lại
						niềm hạnh phúc cho mẹ và bé..</p>
				</div>
				<div class="col-md-6 about-w3l-agileifo-grid">
					<img src="images/about1.jpg" alt=" " class="img-responsive">
					<div class="img-ab">
						<img src="images/about2.jpg" alt=" " class="img-responsive">
					</div>
				</div>
				
				<div class="clearfix"></div>
				<a href="client/about.htm" class="btn-style btn-primary btn mt-lg-5 mt-4">Xem thêm</a>
			</div>
		</div>
	</div>


	<div class="about-main-w3-agile">
		<div class="col-md-6 about-left-agileits-w3layouts">
			<i class="fa fa-balance-scale" aria-hidden="true"></i>
			<p class="bold">Dịch vụ tốt nhất</p>
			<p class="para-w3layouts">Dịch vụ tốt</p>
			<a href="#myModal" class="find-about" data-toggle="modal">Find
				out more</a>
		</div>
		<div class="col-md-6 about-right-agileinfo"
			style="background-color: #ed948e;">
			<i class="fa fa-user-circle" aria-hidden="true"></i>
			<p class="bold2">Nhân viên lành nghê</p>
			<p class="para-w3layouts">Nhân viên giỏi</p>
			<a href="#myModal" class="find-about" data-toggle="modal">Find
				out more</a>
		</div>
		<div class="clearfix"></div>

		<div class="col-md-6 about-right-agileinfo about-right-agileinfo1 "
			style="background-color: #ed948e;">
			<i class="fa fa-spinner" aria-hidden="true"></i>
			<p class="bold2">Chăm sóc đặc biệt</p>
			<p class="para-w3layouts">Chăm sóc đặc biệt.</p>
			<a href="#myModal" class="find-about find-about1" data-toggle="modal">Find
				out more</a>
		</div>
		<div
			class="col-md-6 about-left-agileits-w3layouts about-left-agileits-w3layouts1">
			<i class="fa fa-handshake-o" aria-hidden="true"></i>
			<p class="bold">Đảm bảo an toàn</p>
			<p class="para-w3layouts">Đảm bảo an toàn vệ sinh cho bé</p>
			<a href="#myModal" class="find-about" data-toggle="modal">Find
				out more</a>
		</div>
		<div class="clearfix"></div>
	</div>

	<!--//about -->
	<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<div class="w3-heading-all w3-head2-all">
				<h3>Dịch vụ</h3>
			</div>
			<div class="services-w3lsrow">
				<div class="col-md-4 services-grids">
					<i class="fa fa-gears icon" aria-hidden="true"></i>
					<h4>Tắm rửa</h4>
					<p>Tắm rửa sạch sẽ, đúng cách giúp bé ngăn ngừa mầm bệnh</p>
				</div>
				<div class="col-md-4 services-grids">
					<div class="w3agile-servs-img">
						<i class="fa fa-group icon" aria-hidden="true"></i>
						<h4>Massage</h4>
						<p>Massage giúp bé thư giãn, hỗ trợ phát triển sau này</p>
					</div>
				</div>
				<div class="col-md-4 services-grids">
					<div class="w3agile-servs-img">
						<i class="fa fa-list-alt icon" aria-hidden="true"></i>
						<h4>Vệ sinh khô</h4>
						<p>Vệ sinh khô giúp loại bỏ những mầm bệnh trong vùng nhạy cảm
							của bé</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //services -->


	<!-- pricing -->
	<!-- <div class="pricing-agile" id="pricing-agile">
		<div class="container">
			<div class="w3-heading-all w3-services-head">
				<h3>Giá cả</h3>
			</div>

			<div class="pricing-agile-grids">
				<div class="col-xs-4 grid-info">
					<h3>FAMILY PACK</h3>
					<h4>
						$29.99 <sup>*</sup>
					</h4>
					<div class="pricing-agile-text">
						<p>routine blood investigations</p>
						<p>semen analysis</p>
						<p>Hsg</p>
						<p>Laproscopy</p>
					</div>
					<a href="#regi" class="scroll">Choose Plan</a>
				</div>
				<div class="col-xs-4 grid-info grid-two">
					<h3>PREMIUM</h3>
					<h4>
						$48.99 <sup>*</sup>
					</h4>
					<div class="pricing-agile-text">
						<p>routine blood investigations</p>
						<p>semen analysis</p>
						<p>follicular study</p>
						<p>Laproscopy</p>
					</div>
					<a href="#regi" class="scroll">Choose Plan</a>
				</div>
				<div class="col-xs-4 grid-info grid-three">
					<h3>LUXURY</h3>
					<h4>
						$76.99 <sup>*</sup>
					</h4>
					<div class="pricing-agile-text">
						<p>routine blood investigations</p>
						<p>semen analysis</p>
						<p>Hormone analysis</p>
						<p>Laproscopy</p>
					</div>
					<a href="#regi" class="scroll">Choose Plan</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div> -->
	<!-- //pricing table -->
	<!-- team -->
	<!---728x90--->
	<!-- <div class="team" id="team">
		<div class="container">
			<div class="w3-heading-all">
				<h3>Đội ngũ</h3>
			</div>
			<div class="teamgrids">
				<div class="col-md-3 teamgrid1">
					<img src="images/t1.jpg" alt="" />
					<div class="teaminfo">
						<h4>Cao Trọng Giáp</h4><br>
						<div class="team-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
						<p>
							<i class="fa fa-dot-circle-o" aria-hidden="true"></i> Nhóm trưởng]
						</p>
						<p>
							<i class="fa fa-phone" aria-hidden="true"></i> +02 133 4567
						</p>
						<p>
							<i class="fa fa-envelope" aria-hidden="true"></i><a
								href="mailto:info@example.com"> giap@gmail.com</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 teamgrid1">
					<img src="images/t2.jpg" alt="" />
					<div class="teaminfo">
						<h4>Nguyễn Duy Quân</h4><br>
						<div class="team-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
						<p>
							<i class="fa fa-dot-circle-o" aria-hidden="true"></i>Nhà phát triển
						</p>
						<p>
							<i class="fa fa-phone" aria-hidden="true"></i> +02 133 4568
						</p>
						<p>
							<i class="fa fa-envelope" aria-hidden="true"></i><a
								href="mailto:info@example.com"> quan@gmail.com</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 teamgrid1">
					<img src="images/t3.jpg" alt="" />
					<div class="teaminfo">
						<h4>Lê Sỹ Chính</h4><br>
						<div class="team-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
						<p>
							<i class="fa fa-dot-circle-o" aria-hidden="true"></i>Nhà phát triển
						</p>
						<p>
							<i class="fa fa-phone" aria-hidden="true"></i> +02 133 4569
						</p>
						<p>
							<i class="fa fa-envelope" aria-hidden="true"></i><a
								href="mailto:info@example.com"> chinh@gmail.com</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 teamgrid1">
					<img src="images/t4.jpg" alt="" />
					<div class="teaminfo">
						<h4>Nguyễn Hoàng Anh</h4><br>
						<div class="team-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
						<p>
							<i class="fa fa-dot-circle-o" aria-hidden="true"></i>Nhà phát triển
						</p>
						<p>
							<i class="fa fa-phone" aria-hidden="true"></i> +02 133 4570
						</p>
						<p>
							<i class="fa fa-envelope" aria-hidden="true"></i><a
								href="mailto:info@example.com"> anh@gmail.com</a>
						</p>
					</div>
				</div>
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div> -->
	<!-- //team -->

	<!-- gallery -->
	<!---728x90--->
	<div class="banner-bottom gallery" id="gallery">
		<div class="container">

			<div class="wthree-heading">
				<div class="w3-heading-all">
					<h3 style="color: #17449e;">Thư viện</h3>
				</div>
			</div>
			<!---728x90--->
			<div class="w3ls_gallery_grids">
				<div class="col-md-4 w3_agile_gallery_grid">
					<div class="agile_gallery_grid">
						<a
							title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
							href="images/g1.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g1.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
							href="images/g2.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g2.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
							href="images/g3.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g3.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 w3_agile_gallery_grid">
					<div class="agile_gallery_grid">
						<a
							title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
							href="images/g4.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g4.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
							href="images/g5.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g5.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
							href="images/g6.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g6.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 w3_agile_gallery_grid">
					<div class="agile_gallery_grid">
						<a
							title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
							href="images/g7.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g7.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
							href="images/g8.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g8.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a
							title="Donec sapien massa, placerat ac sodales ac, feugiat quis est."
							href="images/g9.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g9.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Chăm sóc trẻ</h3>

								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---728x90--->
	<!-- //gallery -->
	<!-- /testimonials -->
	<!-- <div class="testimonials_test" id="testimonials">
	<div class="w3-heading-all w3-head2-all">
				<h3>Testimonials</h3>
			</div>
		<div class="container">
		form	
	        <div class="col_md_6 login-w3l">	
			<div class="top-img-agileits-w3layouts">
				<h2 class="sub-head-w3-agileits">Subscribe for <span>free updates</span></h2>
			</div>		
			<div class="login-form">	
				<form action="#" method="post">
					<input type="text" name="Name" placeholder="Name" required="" />
					<input type="email" name="Email" placeholder="Email Address" required="" />
					<input type="submit" value="Subscribe">
				</form>	
			</div>
		 </div>
		<div class="col_md_6 testimonials">
			<section id="carousel">
					<div class="testimonials_inner">
						<div class="col-md-8 col-md-offset-2">
							<div class="quote"><i class="fa fa-quote-left fa-4x"></i></div>
							<div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="3000">
								Carousel indicators
								<ol class="carousel-indicators">
									<li data-target="#fade-quote-carousel" data-slide-to="0"></li>
									<li data-target="#fade-quote-carousel" data-slide-to="1" class="active"></li>
									<li data-target="#fade-quote-carousel" data-slide-to="2" ></li>
								</ol>
								Carousel items
								<div class="carousel-inner">
									<div class="item">
										<div class="profile-circle"><img src="images/c2.png" alt=" "></div>
										<h4>Client1,Some company</h4>
										<blockquote>
											<p class="test">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore
												optio doloremque laboriosam quas.</p>
										</blockquote>
									</div>
									<div class="item">
										<div class="profile-circle"><img src="images/c2.png" alt=" "></div>
										<h4>Client3,Some company</h4>
										<blockquote>
											<p class="test">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore
												optio doloremque laboriosam quas.</p>
										</blockquote>
									</div>
									<div class="active item">
										<div class="profile-circle"><img src="images/c2.png" alt=" "></div>
										<h4>Client3,Some company</h4>
										<blockquote>
											<p class="test">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore
												optio doloremque laboriosam quas.</p>
										</blockquote>
									</div>

								</div>
							</div>
						</div>
				</div>
			</section>
		</div>
		<div class="clearfix"> </div>
	</div>
	 </div> -->

	<!-- //testimonials -->
	<!-- <div class="map" id="contact">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d48393.30799446157!2d-74.01837574721542!3d40.70520823566694!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1453557757637" allowfullscreen></iframe>
			<div class="book-form" id="contact">
							<form action="#" method="post">
								<div class="phone_email">
									<label>Full Name : </label>
									<div class="form-text">
										<span class="fa fa-user" aria-hidden="true"></span>
										<input type="text" name="Name" placeholder="Name" required="">
									</div> 
								</div>
								<div class="phone_email phone_email1">
									<label>Email : </label>
									<div class="form-text">
										<span class="fa fa-envelope" aria-hidden="true"></span>
										<input type="email" name="email" placeholder="Email" required="">
									</div>
								</div>
								<div class="phone_email">
									<label>Phone Number : </label>
									<div class="form-text">
										<span class="fa fa-phone" aria-hidden="true"></span>
										<input type="text" name="Phone no" placeholder="Phone no" required="">
									</div> 
								</div> 
								<div class="phone_email phone_email1">
									<label>Address : </label>
									<div class="form-text">
										<span class="fa fa-map-marker" aria-hidden="true"></span>
										<input type="text" name="address" placeholder="Your Address" required="">
									</div> 
								</div> 
								<div class="clearfix"></div>
								<div class="agileits_reservation_grid">
									<div class="span1_of_1">
										<label>Date : </label> 
										<div class="book_date"> 
											<span class="fa fa-calendar" aria-hidden="true"></span>
											<input class="date" id="datepicker" type="text" name="date" placeholder="mm/dd/yyyy" required="">
										</div>					
									</div>
									<div class="span1_of_1">
										start_section_room
										<label>appointment </label>
										<div class="section_room">
											<span class="fa fa-clock-o" aria-hidden="true"></span>
											<select id="country" onchange="change_country(this.value)" class="frm-field required">
												<option value="null">Emergency</option>
												<option value="null">Normal</option>         
												<option value="AX">New patient</option>
											</select>
										</div>	
									</div>
									<div class="clearfix"></div>
								</div> 
								<input type="submit" value="Book Now" />
							</form>
						</div>

			</div> -->



	<!-- modal -->
	<!-- for pop up -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span class="span2" aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Child care</h4>
				</div>
				<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/pop.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam
							ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque
							ac fermentum diam. Integer eu facilisis nunc, a iaculis felis.
							Pellentesque pellentesque tempor enim, in dapibus turpis
							porttitor quis. Suspendisse ultrices hendrerit massa. Nam id
							metus id tellus ultrices ullamcorper. Cras tempor massa luctus,
							varius lacus sit amet, blandit lorem. Duis auctor in tortor sed
							tristique. Proin sed finibus sem.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<!-- //for pop up -->

	<script>
  $(window).bind("load", function() {
    $('.body__preloader').addClass("loaded");
  })
</script>


	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function() {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity(
						"Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->


	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function() {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto : true,
				pager : true,
				nav : false,
				speed : 500,
				namespace : "callbacks",
				before : function() {
					$('.events').append("<li>before event fired.</li>");
				},
				after : function() {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!--banner Slider starts Here-->
	<!-- /gallery js -->
	<script src="js/simpleLightbox.js"></script>
	<script>
		$('.w3_agile_gallery_grid a').simpleLightbox();
	</script>
	<!-- //gallery js -->
	<!-- Calendar -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker").datepicker();
		});
	</script>
	<!-- //Calendar -->

	<!-- start-smoth-scrolling-nav -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- Slide-To-Top JavaScript (No-Need-To-Change) -->
	<script type="text/javascript">
		$(document).ready(function() {
			var defaults = {
				containerID : 'toTop', // fading element id
				containerHoverID : 'toTopHover', // fading element hover id
				scrollSpeed : 100,
				easingType : 'linear'
			};
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 0;"> </span></a>
	<!-- //Slide-To-Top JavaScript -->
	<!-- jarallax scrolling -->
	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed : 0.5,
			imgWidth : 1366,
			imgHeight : 768
		})
	</script>
	<!-- //jarallax scrolling -->
	<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>
	<!-- //smooth scrolling -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>