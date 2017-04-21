<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home One || Kidschool</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- favicon
        ============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- All css files are included here
        ============================================ -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/core.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/style.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/shortcode/shortcodes.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/shortcode/index.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/plugins/hover.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/responsive.css">
<link href="#" data-style="styles" rel="stylesheet">

<!-- Modernizr JS -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!--Main Wrapper Start-->
	<div class="wrapper bg-white fix">
		<!--Bg White Start-->
		<div class="bg-white">
			<!--Header Area Start-->
			<header class="header-area sticker" id="topnav">
				<div class="header-wrapper header-padding">
					<div class="header-top hidden-xs">
						<div class="container">
							<div class="row">
								<div class="col-sm-offset-8">
									<%
										if (request.getSession().getAttribute("ID") == null) {
									%>
									<form class="form-inline"
										action="<%=request.getContextPath()%>/auth" method="post">
										<div class="form-group">
											<label class="sr-only" for="exampleInputEmail3">ID</label> <input
												type="ID" name="ID" class="form-control input-sm"
												id="exampleInputEmail3" placeholder="ID">
										</div>
										<div class="form-group">
											<label class="sr-only" for="exampleInputPassword3">Password</label>
											<input type="password" name="password"
												class="form-control input-sm" id="exampleInputPassword3"
												placeholder="Password">
										</div>
										<button type="submit" class="btn btn-default btn-sm">Sign
											in</button>
									</form>
									<%} else {%>
									<input type="button" class="btn btn-default btn-sm" value="log out"  onclick = <% request.getSession().invalidate(); %>>

									<%}%>
								</div>

							</div>
						</div>
					</div>
					<div class="main-header">
						<div class="container">
							<div class="row">
								<div class="col-sm-3">
									<div class="logo">
										<a href="index.html"><img src="images/logo/logo.png"
											alt="kidschool" /></a>
									</div>
								</div>
								<div class="col-sm-9">
									<div class="menu-area">
										<div class="menu-item">
											<!-- Mobile menu toggle-->
											<a class="navbar-toggle">
												<div class="lines">
													<span></span> <span></span> <span></span>
												</div>
											</a>
											<!-- End mobile menu toggle-->
										</div>
									</div>
									<div id="navigation" class="main-menu">
										<nav>
											<ul class="navigation-menu">
												<li><a href="index.html">Thông Tin Thông Báo </a></li>
												<li><a href="editTeacher.html">Điều Chỉnh Hồ Sơ</a></li>
												<li><a href="listStudent.html">Danh Sách Học Sinh</a></li>
												<li class="hidden-sm"><a href="listTeacher.html">Danh
														Sách Giáo Viên</a></li>
												<li><a href="event.html">Chế Độ Dinh Dưỡng</a></li>
												<li><a href="contact.html">Thống Kê</a></li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- End of Header Area -->
			<!-- Start Slider Area-->

			<!-- End Slider Area -->
			<!--Start Activities Area-->
			<div class="activities-area text-center pt-90 pb-90">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="section-title">
								<h2>THÔNG TIN THÔNG BÁO</h2>
							</div>
						</div>
					</div>
					<div class="row">
						<div>
							<button type="button" class="btn btn-primary ml-20 mb-60"
								style="float: left" href="#" data-toggle="modal"
								data-target="#addTB">Thêm Thông Báo Mới</button>
						</div>
						<div class="col-md-11 col-sm-11 col-xs-12">
							<div class="single-activity mb-2">
								<div class="activity-content">
									<h3>
										<a href="#">Thông Báo Nghỉ Học</a>
									</h3>
									<p>Nhà trẻ thông báo đến phụ huynh, Tất cả các lớp sẽ được
										nghỉ học vào 20/04/2017</p>
								</div>
								<div class="editTB">
									<button type="button" class="btn btn-default ml-20"
										style="float: left" data-toggle="modal" data-target="#editTB">Sửa</button>
									<button type="button" class="btn btn-default ml-20"
										style="float: left">Xóa</button>
								</div>
							</div>
							<div class="single-activity mb-2">
								<div class="activity-content">
									<h3>
										<a href="#">Thông báo nộp học phí</a>
									</h3>
									<p>TNhà trẻ thông báo đến phụ huynh nhanh chóng hoàn thành
										các khoản học phí kỳ 2 năm 2017</p>
								</div>
								<div class="editTB">
									<button type="button" class="btn btn-default ml-20"
										style="float: left" data-toggle="modal" data-target="#editTB">Sửa</button>
									<button type="button" class="btn btn-default ml-20"
										style="float: left">Xóa</button>
								</div>
							</div>
							<div class="single-activity mb-2">
								<div class="activity-content">
									<h3>
										<a href="#">Thông Báo Tránh Bão</a>
									</h3>
									<p>Nhà Trẻ cho nghỉ học để tránh bão</p>
								</div>
								<div class="editTB">
									<button type="button" class="btn btn-default ml-20"
										style="float: left" data-toggle="modal" data-target="#editTB">Sửa</button>
									<button type="button" class="btn btn-default ml-20"
										style="float: left">Xóa</button>
								</div>
							</div>
							<div class="single-activity mb-2">
								<div class="activity-content">
									<h3>
										<a href="#">Thông Báo Tuyên Giáo Viên</a>
									</h3>
									<p>Nhà trẻ tiến hành tuyển giáo viên mần non</p>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
			<!-- End of Activities Area -->
			<!--Start of gallery Area-->
			<div class="activities-area text-center pt-90 pb-90">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="section-title">
								<h2>Thực đơn của trẻ</h2>
							</div>
						</div>
					</div>
					<div class="row">

						<div class="col-md-4 hidden-sm hidden-xs">
							<div class="single-activity">
								<div class="activity-icon">
									<img src="images/activity/6.png" alt="activity">
								</div>
								<div class="activity-content">
									<h3>
										<a href="#">THỨ HAI</a>
									</h3>
									<p>Cơm</p>
									<p>Canh rau củ</p>
									<p>Cá kho dưa</p>
									<p>Cánh gà chiên mắm</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 hidden-sm hidden-xs">
							<div class="single-activity">
								<div class="activity-icon">
									<img src="images/activity/6.png" alt="activity">
								</div>
								<div class="activity-content">
									<h3>
										<a href="#">THỨ BA</a>
									</h3>
									<p>Cơm</p>
									<p>Canh rau củ</p>
									<p>Cá kho dưa</p>
									<p>Cánh gà chiên mắm</p>
								</div>
							</div>
						</div>
						<div class="col-md-4 hidden-sm hidden-xs">
							<div class="single-activity">
								<div class="activity-icon">
									<img src="images/activity/6.png" alt="activity">
								</div>
								<div class="activity-content">
									<h3>
										<a href="#">THỨ TƯ</a>
									</h3>
									<p>Cơm</p>
									<p>Canh rau củ</p>
									<p>Cá kho dưa</p>
									<p>Cánh gà chiên mắm</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End of gallery Area -->


			<!-- Start of Footer area -->
			<footer class="footer-area">
				<div class="main-footer pt-85 pb-80">
					<div class="container">
						<div class="row">
							<div class="col-md-3 col-sm-4 col-xs-12">
								<div class="footer-widget">
									<h3>ABOUT YuSchool</h3>
									<p>Nơi đào tạo, nuôi dạy trẻ Uy tín, chất lượng phạm vi
										Toàn Cầu</p>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 col-xs-12">
								<div class="footer-widget"></div>
							</div>
							<div class="col-md-3 hidden-sm col-xs-12">
								<div class="footer-widget">
									<h3>Truy cập nhanh</h3>
									<nav>
										<ul>
											<li><a href="#">Về chúng tôi</a></li>
											<li><a href="#">Lớp học của chúng tôi</a></li>
											<li><a href="#">Liên lạc với chúng tôi</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 col-xs-12">
								<div class="footer-widget">
									<h3>Bản tin</h3>
									<p>Tin tức về thông báo toàn trường, dinh dưỡng của trẻ</p>
									<form action="#" id="mc-form" class="mc-form fix">
										<div class="subscribe-form">
											<input id="mc-email" type="email" name="email"
												placeholder="Your Email">

										</div>
									</form>
									<!-- mailchimp-alerts Start -->
									<div class="mailchimp-alerts text-centre fix text-small">
										<div class="mailchimp-submitting"></div>
										<!-- mailchimp-submitting end -->
										<div class="mailchimp-success"></div>
										<!-- mailchimp-success end -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</footer>
			<!-- End of Footer area -->
		</div>
		<!--End of Bg White-->
		<!-- Modal -->
		<div class="modal fade " id="addTB" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-large" role="document">
				<div class="modal-content modalAddTb">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true" style="color: #008c99">&times;</span>
						</button>
						<h4 class="modal-title text-center" id="myModalLabel">Thêm
							Thông Báo Mới</h4>
					</div>
					<div class="modal-body">
						<div class="form-pop-up-content">
							<form method="post" action="#">
								<div class="form-pop-up-content pt-25 pb-30 pl-40 pr-40">
									<form method="post" action="#">
										<div class="form-group col-sm-5 pl-0">
											<label for="ngaydang" class="">Ngày Đăng</label> <input
												type="date" name="ngaydang" id="ngaydang" placeholder="Name"
												class=" form-control">
										</div>
										<div class="form-group" style="clear: both;">
											<label for="tieuDe">Tiêu đề</label> <input type="text"
												name="tieuDe" id="tieuDe" placeholder=""
												class="form-control">
										</div>
										<div class="form-group">
											<label for="noiDung">Nội Dung</label>
											<textarea name="" class="form-control" id="noiDung"></textarea>
										</div>
									</form>
								</div>
							</form>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
						<button type="button" class="btn btn-primary">Đăng Thông
							Báo</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal EditNote -->
		<div class="modal fade " id="editTB" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-large" role="document">
				<div class="modal-content modalAddTb">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true" style="color: #008c99">&times;</span>
						</button>
						<h4 class="modal-title text-center" id="myModalLabel">Thêm
							Thông Báo Mới</h4>
					</div>
					<div class="modal-body">
						<div class="form-pop-up-content">
							<form method="post" action="#">
								<div class="form-pop-up-content pt-25 pb-30 pl-40 pr-40">
									<form method="post" action="#">
										<div class="form-group col-sm-5 pl-0">
											<label for="ngaydang" class="">Ngày Đăng</label> <input
												type="date" name="ngaydang" id="ngaydang" placeholder="Name"
												class=" form-control">
										</div>
										<div class="form-group" style="clear: both;">
											<label for="tieuDe">Tiêu đề</label> <input type="text"
												name="tieuDe" id="tieuDe" placeholder=""
												class="form-control">
										</div>
										<div class="form-group">
											<label for="noiDung">Nội Dung</label>
											<textarea name="" class="form-control" id="noiDung"></textarea>
										</div>
									</form>
								</div>
							</form>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
						<button type="button" class="btn btn-primary">Đăng Thông
							Báo</button>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!--End of Main Wrapper Area-->

	<!-- All jquery 
		========================================================= -->
	<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/ajax-mail.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/jquery.magnific-popup.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/main.js"></script>

</body>

<!-- Mirrored from htmlbundle.com/html/kidschool-preview/kidschool/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Apr 2017 14:26:58 GMT -->
</html>