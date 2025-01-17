<%@page import="com.kickboard.Kdash.entity.Goods"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="com.kickboard.Kdash.config.auth.CustomUserDetails"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="java.security.Principal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>shop_paycheck</title>
<!-- tabler 아이콘 사용 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/dist/tabler-icons.min.css" />
<link rel="shortcut icon" type="image/png"
	href="resources/assets/images/logos/ball_logo.png" />
<link rel="stylesheet" href="resources/assets/css/styles.min.css" />
</head>



<body>
	<%
	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	if (authentication != null && authentication.isAuthenticated()
			&& authentication.getPrincipal() instanceof CustomUserDetails) {
		CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
		if (userDetails != null) {

		}
	} else {

	}
	%>
	<!--  Body Wrapper -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">
		<!-- Sidebar Start -->
		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div>
				<div
					class="brand-logo d-flex align-items-center justify-content-between">
					<a href="home" class="text-nowrap logo-img"> <img
						src="resources/assets/images/logos/kick_logo.png" width="180"
						alt="" />
					</a>
					<div
						class="close-btn d-xl-none d-block sidebartoggler cursor-pointer"
						id="sidebarCollapse">
						<i class="ti ti-x fs-8"></i>
					</div>
				</div>
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav scroll-sidebar" data-simplebar="">
					<ul id="sidebarnav">
						<li class="nav-small-cap"><i
							class="ti ti-dots nav-small-cap-icon fs-4"></i> <span
							class="hide-menu">Home</span></li>
						<li class="sidebar-item"><a class="sidebar-link" href="home"
							aria-expanded="false"> <span> <i
									class="ti ti-layout-dashboard"></i>
							</span> <span class="hide-menu">Dashboard</span>
						</a></li>
						<li class="nav-small-cap"><i
							class="ti ti-dots nav-small-cap-icon fs-4"></i> <span
							class="hide-menu">contents</span></li>

						<li class="sidebar-item"><a class="sidebar-link"
							href="predict" aria-expanded="false"> <span> <i
									class="ti ti-current-location"></i>
							</span> <span class="hide-menu">predict</span>
						</a></li>
						<li class="sidebar-item"><a class="sidebar-link" href="news"
							aria-expanded="false"> <span> <i class="ti ti-news"></i>
							</span> <span class="hide-menu">news</span>
						</a></li>
						<li class="sidebar-item"><a class="sidebar-link"
							href="interview" aria-expanded="false"> <span> <i
									class="ti ti-ad-2"></i>
							</span> <span class="hide-menu">interview</span>
						</a>
						<li class="sidebar-item"><a class="sidebar-link" href="shop"
							aria-expanded="false"> <span> <i
									class="ti ti-shopping-bag"></i>
							</span> <span class="hide-menu">shop</span>
						</a></li>
						<li class="nav-small-cap"><i
							class="ti ti-dots nav-small-cap-icon fs-4"></i> <span
							class="hide-menu">profile</span></li>
						<%
						if (authentication != null && authentication.isAuthenticated()
								&& authentication.getPrincipal() instanceof CustomUserDetails) {
							CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
							if (userDetails != null) {

							}
						%>
						<li class="sidebar-item"><a class="sidebar-link"
							href="logout" aria-expanded="false"> <span> <i
									class="ti ti-logout"></i>
							</span> <span class="hide-menu">logout</span>
						</a></li>
						<%
						} else {
						%>
						<li class="sidebar-item"><a class="sidebar-link" href="login"
							aria-expanded="false"> <span> <i class="ti ti-login"></i>
							</span> <span class="hide-menu">Login</span>
						</a></li>
						<li class="sidebar-item"><a class="sidebar-link"
							href="register" aria-expanded="false"> <span> <i
									class="ti ti-user-plus"></i>
							</span> <span class="hide-menu">Register</span>
						</a> <%
 }
 %></li>
					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!--  Sidebar End -->
		<!--  Main wrapper -->
		<div class="body-wrapper">
			<!--  Header Start -->
			<header class="app-header">
				<nav class="navbar navbar-expand-lg navbar-light">
					<ul class="navbar-nav">
						<li class="nav-item d-block d-xl-none"><a
							class="nav-link sidebartoggler nav-icon-hover"
							id="headerCollapse" href="javascript:void(0)"> <i
								class="ti ti-menu-2"></i>
						</a></li>
					</ul>
					<div class="navbar-collapse justify-content-end px-0"
						id="navbarNav">
						<ul
							class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
							<li class="nav-item dropdown"><a
								class="nav-link nav-icon-hover" href="javascript:void(0)"
								id="drop2" data-bs-toggle="dropdown" aria-expanded="false">
									<img src="resources/assets/images/profile/user-1.jpg" alt=""
									width="35" height="35" class="rounded-circle">
							</a>
								<div
									class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up"
									aria-labelledby="drop2">
									<%
									if (authentication != null && authentication.isAuthenticated()
											&& authentication.getPrincipal() instanceof CustomUserDetails) {
										CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
										if (userDetails != null) {

										}
									%>
									<div class="message-body">
										<p class="mb-0 fs-3 profile-name text-center"><%=userDetails.getMem_nick()%>님
											환영합니다.
										</p>
										<p class="mb-0 fs-3 profile-name text-center">
											포인트 :
											<%=userDetails.getMem_point()%>
											P
										</p>
										<a href="profile"
											class="d-flex align-items-center gap-2 dropdown-item"> <i
											class="ti ti-user fs-6"></i>
											<p class="mb-0 fs-3">My Profile</p>
										</a> <a href="shop_paycheck"
											class="d-flex align-items-center gap-2 dropdown-item"> <i
											class="ti ti-shopping-cart fs-6"></i>
											<p class="mb-0 fs-3">My Cart</p>
										</a> <a href="logout"
											class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
									</div>
									<%
									} else {
									%>
									<div class="message-body">
										<p class="mb-0 fs-3 profile-name text-center">로그인이 필요합니다.</p>
									</div>
									<%
									}
									%>
								</div></li>
						</ul>
					</div>
				</nav>
			</header>
			<!--  Header End -->
			<div class="container-fluid">
				<h1 class="text-center">
					<a href="#"><i class="ti ti-news"></i></a>장바구니
				</h1>
				<div class="card">
					<div class="card-body">
						<!-- <h5 class="card-title fw-semibold mb-4">Sample Page</h5> -->
						<div>
						<%List<Goods> basket=(List<Goods>)session.getAttribute("cart"); 
						int totalpice=0;
						String cartname="";%>
						<%if(basket!=null)for(var i=0; i<basket.size();i++) {totalpice+=basket.get(i).getGoods_price();
						cartname+=basket.get(i).getGoods_name();if(i!=0)cartname+=", ";%>
							<div class="card">
								<div
									class="card-body row align-items-center justify-content-center">
									<div class="col-2">
										<img src="<%=basket.get(i).getGoods_img() %>"
											class="card-img-top rounded-0">
									</div>
									<div class="col-8">
										<h2 class="text-primary d-block fw-normal">
											<%=basket.get(i).getGoods_name() %>
											</h5>
											<div class="input-group mb-3">
												<span class="input-group-text" style="min-width:80px;">주문수</span> <input
													type="number" class="form-control" value="1" min="1">
											</div>
											<div class="input-group mb-3">
												<span class="input-group-text" style="min-width:80px;">금액</span> <input type="text"
													class="form-control" value="<%=basket.get(i).getGoods_price() %>" min="1" readonly>
											</div>
											
											<div class="text-end">
												<button class="btn btn-primary" onclick="deleteCart(<%=i%>)">장바구니에서 제거</button>
											</div>
									</div>
								</div>
							</div>
							<%} %>
							
						</div>

						<div>
							<div class="card">
								<div
									class="card-body row align-items-center justify-content-center">
									<div class="text-end">
										<div class="input-group mb-3">
											<span class="input-group-text" style="min-width:80px;">총금액</span> <input type="text"
												class="form-control" value="<%=totalpice %>" min="0" readonly>
											<button class="btn btn-outline-primary" id="purchase">결제하기</button>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
	<script>
	var IMP = window.IMP;
	IMP.init("imp50718461");
	 document.getElementById("purchase").addEventListener('click',()=>{
			IMP.request_pay({
				pg : "html5_inicis.INIpayTest",
				pay_method : "card",
				merchant_uid : "123451231-1212321321",
				name : "<%=cartname%>",
				amount : <%=totalpice %>,
				buyer_email : "Iamport@chai.finance",
				buyer_name : "포트원 기술지원팀",
				buyer_tel : "010-1234-5678",
				buyer_addr : "서울특별시 강남구 삼성동",
				buyer_postcode : "123-456",
			}, function(rsp) {
				// callback
				//rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
			});
	 });
	function requestPay() {

	}
</script>

	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@4.4.2/dist/chart.umd.min.js"></script>
	<script src="/연습/js모음/js.js"></script>
	<script src="resources/assets/libs/jquery/dist/jquery.min.js"></script>
	<script
		src="resources/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="resources/assets/js/sidebarmenu.js"></script>
	<script src="resources/assets/js/app.min.js"></script>
	<script src="resources/assets/libs/apexcharts/dist/apexcharts.js"></script>
	<script src="resources/assets/libs/simplebar/dist/simplebar.js"></script>
	<script src="resources/assets/js/dashboard.js"></script>

</body>

</html>