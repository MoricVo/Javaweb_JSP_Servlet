<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Trang chủ(My JDBC)</title>

    <meta name="description" content="" />

    <!-- Favicon -->
   <!--  <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

    Fonts
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    Icons. Uncomment required icon fonts
    <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css" />

    Core CSS
    <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/css/demo.css" />

    Vendors CSS
    <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="../assets/vendor/libs/apex-charts/apex-charts.css" />

    Page CSS

    Helpers
    <script src="../assets/vendor/js/helpers.js"></script>

    ! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section
    ? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file. 
    <script src="../assets/js/config.js"></script> -->
    
   <!--  CÁI NÀY LÀ MỚI GẮNG VÔ NÈ -->
   
   
		   
		<link rel="stylesheet" type="text/css"
			href="<c:url value='/template/ad_template_new/assets/img/favicon/favicon.ico'/>" />
		<!-- Fonts -->
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link
			href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
			rel="stylesheet" />
		
		<!-- Icons. Uncomment required icon fonts -->
		<link rel="stylesheet" type="text/css"
			href="<c:url value='/template/ad_template_new/assets/vendor/fonts/boxicons.css'/>" />
		<!-- Icons. Uncomment required icon fonts -->
		<!-- Core CSS -->
		<link rel="stylesheet" type="text/css"
			href="<c:url value='/template/ad_template_new/assets/vendor/css/core.css'/>" class="template-customizer-core-css" />
		<link rel="stylesheet" type="text/css"
			href="<c:url value='/template/ad_template_new/assets/vendor/css/theme-default.css'/>" class="template-customizer-theme-css" />
		<link rel="stylesheet" type="text/css"
			href="<c:url value='/template/ad_template_new/assets/css/demo.css'/>" />
		
		
		<!-- Vendors CSS -->
		<link rel="stylesheet" type="text/css"
			href="<c:url value='/template/ad_template_new/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css'/>" />
		
		<link rel="stylesheet" type="text/css"
			href="<c:url value='/template/ad_template_new/assets/vendor/libs/apex-charts/apex-charts.css'/>" />
		
		<!-- Page CSS -->
		
		<!-- Helpers -->
			
		<script
			src="<c:url value='/template/ad_template_new/assets/vendor/js/helpers.js'/>"></script>
		<script src="<c:url value='/template/ad_template_new/assets/js/config.js'/>"></script>
   <!--  CÁI NÀY MỚI GẮN VÔ Á -->
    
    
    
    
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

    <!--   DAY NE -->
     <%@ include file="/common/admin/header.jsp" %>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

         	<%@ include file="/common/admin/header2.jsp" %>
          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
           <dec:body></dec:body>
            
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  ©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  , hệ thống được phát triển bởi ❤️ by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">Võ Tấn Khôi|DH20PM|ĐẠI HỌC AN GIANG</a>
                </div>
                <div>
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a
                    href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                    target="_blank"
                    class="footer-link me-4"
                    >Documentation</a
                  >

                  <a
                    href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                    target="_blank"
                    class="footer-link me-4"
                    >Support</a
                  >
                </div>
              </div>
            </footer>
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <div class="buy-now">
      <a
        href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/"
        target="_blank"
        class="btn btn-danger btn-buy-now"
        >Upgrade to Pro</a
      >
    </div>

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
<!--     <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    endbuild

    Vendors JS
    <script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

    Main JS
    <script src="../assets/js/main.js"></script>

    Page JS
    <script src="../assets/js/dashboards-analytics.js"></script>

    Place this tag in your head or just before your close body tag.
    <script async defer src="https://buttons.github.io/buttons.js"></script> -->
    
    
    
    
   <!--  THAY ĐỔI Ở ĐÂY NÈ -->
   	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script
		src="<c:url value='/template/ad_template_new/assets/vendor/libs/jquery/jquery.js'/>"></script>
	<script
		src="<c:url value='/template/ad_template_new/assets/vendor/libs/popper/popper.js'/>"></script>
	<script
		src="<c:url value='/template/ad_template_new/assets/vendor/js/bootstrap.js'/>"></script>
	<script
		src="<c:url value='/template/ad_template_new/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js'/>"></script>
	<script src="<c:url value='/template/ad_template_new/assets/vendor/js/menu.js'/>"></script>
	
	<script
		src="<c:url value='/template/admin/twb/jquery.twbsPagination.js'/>"
		type="text/javascript"></script>
	<script
		src="<c:url value='/template/admin/twb/jquery.twbsPagination.min.js'/>"
		type="text/javascript"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->
	<script
		src="<c:url value='/template/ad_template_new/assets/vendor/libs/apex-charts/apexcharts.js'/>"></script>


	<!-- Main JS -->
	<script src="<c:url value='/template/ad_template_new/assets/js/main.js'/>"></script>

	<!-- Page JS -->
	<script src="<c:url value='/template/ad_template_new/assets/js/dashboards-analytics.js'/>"></script>


	<!-- Place this tag in your head or just before your close body tag. -->

	<script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>










<%-- <html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Trang chủ(My JDBC)</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<c:url value='/template/ad_template_new/ad_template/assets/vendors/mdi/css/materialdesignicons.min.css' />" />
    
    <!-- endinject -->
     <link rel="stylesheet" href="<c:url value='/template/ad_template_new/ad_template/assets/vendors/css/vendor.bundle.base.css' />" />
    <!-- Plugin css for this page -->
  
     <link rel="stylesheet" href="<c:url value='/template/ad_template_new/ad_template/assets/vendors/jvectormap/jquery-jvectormap.css' />" />
     
  
    <link rel="stylesheet" href="<c:url value='/template/ad_template_new/ad_template/assets/vendors/flag-icon-css/css/flag-icon.min.css' />" />

     <link rel="stylesheet" href="<c:url value='/template/ad_template_new/ad_template/assets/vendors/owl-carousel-2/owl.carousel.min.css' />" />
     <link rel="stylesheet" href="<c:url value='/template/ad_template_new/ad_template/assets/vendors/owl-carousel-2/owl.theme.default.min.css' />" />
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
      <link rel="stylesheet" href="<c:url value='/template/ad_template_new/ad_template/assets/css/style.css' />" />
    
    <!-- End layout styles -->
     <link rel="stylesheet" href="<c:url value='/template/ad_template_new/ad_template/assets/images/favicon.png' />" />
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_sidebar.html -->
       <%@ include file="/common/header.jsp" %>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_navbar.html -->
     <%@ include file="/common/header2.jsp" %>
        <!-- partial -->
        <div class="main-panel">
         <dec:body></dec:body>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="<c:url value='/template/ad_template_new/ad_template/assets/vendors/js/vendor.bundle.base.js' />"></script>
    
    <!-- endinject -->
    <!-- Plugin js for this page -->
    
     <script src="<c:url value='/template/ad_template_new/ad_template/assets/vendors/chart.js/Chart.min.js' />"></script>
   
     <script src="<c:url value='/template/ad_template_new/ad_template/assets/vendors/progressbar.js/progressbar.min.js' />"></script>
  
     <script src="<c:url value='/template/ad_template_new/ad_template/assets/vendors/jvectormap/jquery-jvectormap.min.js' />"></script>

    <script src="<c:url value='/template/ad_template_new/ad_template/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js' />"></script>
   
    <script src="<c:url value='/template/ad_template_new/ad_template/assets/vendors/owl-carousel-2/owl.carousel.min.js' />"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    
     <script src="<c:url value='/template/ad_template_new/ad_template/assets/js/off-canvas.js' />"></script>
    
     <script src="<c:url value='/template/ad_template_new/ad_template/assets/js/hoverable-collapse.js' />"></script>
    
    <script src="<c:url value='/template/ad_template_new/ad_template/assets/js/misc.js' />"></script>
   
    <script src="<c:url value='/template/ad_template_new/ad_template/assets/js/settings.js' />"></script>
    
     <script src="<c:url value='/template/ad_template_new/ad_template/assets/js/todolist.js' />"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="<c:url value='/template/ad_template_new/ad_template/assets/js/dashboard.js' />"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
     <script src="<c:url value='/template/ad_template_new/twb/jquery.twbsPagination.js' />"></script>
      <script src="<c:url value='/template/ad_template_new/twb/jquery.twbsPagination.min.js' />"></script>
    <!-- End custom js for this page -->
  </body>
</html>
 --%>