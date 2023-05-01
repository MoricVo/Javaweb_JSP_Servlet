
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

 <nav 
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
           <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>
            <div class="avatar " style="margin-right:15px;">
                      <img  src="data:image/png;base64,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" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                             <div class="avatar " style="margin-right:12px;">
                      <img  src="https://inkythuatso.com/uploads/images/2021/12/logo-truong-dai-hoc-an-giang-inkythuatso-01-22-14-03-31.jpg" />
                    </div>
           <h3 style="font-weight:700;color:black;">PHÒNG QUAN HỆ ĐỐI NGOẠI,HỆ THỐNG QUẢN LÝ DỰ ÁN QUỐC TẾ(IPM)</h3>
          </nav>


 <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                  <i class="bx bx-search fs-4 lh-0"></i>
                  <input
                    type="text"
                    class="form-control border-0 shadow-none"
                    placeholder="Search..."
                    aria-label="Search..."
                  />
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->
                <li class="nav-item lh-1 me-3">  <a  style="margin-right:10px;" type="button" href='<c:url value="/admin_them_duan?action=them_duan"/>' class="btn btn-success">+Tạo dự án mới</a></li>
             
               <li class="nav-item lh-1 me-3">  <a href='<c:url value="/admin_send_gmail"/>' type="button" class="btn btn-danger">Gửi thông báo đến Gmail </a> </li>
                <!-- User -->
                <c:if test="${not empty USERMODEL }">
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="${pageContext.request.contextPath}/avatar_user/${USERMODEL.anhDaiDien}" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
               
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="${pageContext.request.contextPath}/avatar_user/${USERMODEL.anhDaiDien}"   alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block">${USERMODEL.tenNguoiDung}</span>
                            <small class="text-muted">${USERMODEL.bangchucvu.tenchucvu}</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href='<c:url value="/admin_thaydoithongtin"/>'>
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">Thông tin cá nhân</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-cog me-2"></i>
                        <span class="align-middle">Cài đặt</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                          <span class="flex-grow-1 align-middle">Thông báo</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a href='<c:url value="/thoat?action=logout"/>' class="dropdown-item" >
                        <i class="bx bx-power-off me-2"></i>
                        <span  class="align-middle">Đăng xuất</span>
                      </a>
                    </li>
                   
                  </ul>
                 
                </li>
                  </c:if>
                <!--/ User -->
              </ul>
            </div>
          </nav>

<%-- <nav class="navbar p-0 fixed-top d-flex flex-row">
	<div
		class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
		<a class="navbar-brand brand-logo-mini" href="index.html"> <img
			src='<c:url value="/template/ad_template/assets/images/logo-mini.svg" />' />
		</a>
	</div>
	<div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
		<button class="navbar-toggler navbar-toggler align-self-center"
			type="button" data-toggle="minimize">
			<span class="mdi mdi-menu"></span>
		</button>
		<ul class="navbar-nav w-100">
			<li class="nav-item w-100">
				<form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
					<input type="text" class="form-control"
						placeholder="Tìm kiếm">
				</form>
			</li>
		</ul>
		<ul class="navbar-nav navbar-nav-right">
			<li class="nav-item dropdown d-none d-lg-block"><a
				class="nav-link btn btn-success create-new-button"
				id="createbuttonDropdown" data-toggle="dropdown"
				aria-expanded="false" href="#">+ Tạo dự án mới</a>
			</li>
				<li class="nav-item dropdown d-none d-lg-block"><a
				class="nav-link btn btn-danger create-new-button"
				id="createbuttonDropdown" data-toggle="dropdown"
				aria-expanded="false" href="#">+ Gửi thông báo email</a>
			</li>
		
		
			<c:if test="${not empty USERMODEL }">
				<li class="nav-item dropdown"><a class="nav-link"
					id="profileDropdown" href="#" data-toggle="dropdown">
						<div class="navbar-profile">
							<img class="img-xs rounded-circle"
								src='<c:url value="/template/ad_template/assets/images/faces/test2.jpg"   />'>
							<p class="mb-0 d-none d-sm-block navbar-profile-name">${USERMODEL.tenNguoiDung}</p>
							<i class="mdi mdi-menu-down d-none d-sm-block"></i>
						</div>
				</a>
					<div
						class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
						aria-labelledby="profileDropdown">
						<h6 class="p-3 mb-0">Profile</h6>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item preview-item">
							<div class="preview-thumbnail">
								<div class="preview-icon bg-dark rounded-circle">
									<i class="mdi mdi-settings text-success"></i>
								</div>
							</div>
							<div class="preview-item-content">
								<p class="preview-subject mb-1">Settings</p>
							</div>
						</a>
						<div class="dropdown-divider"></div>
						<a href='<c:url value="/thoat?action=logout"/>' class="dropdown-item preview-item">
							<div class="preview-thumbnail">
								<div class="preview-icon bg-dark rounded-circle">
									<i class="mdi mdi-logout text-danger"></i>
								</div>
							</div>
							<div class="preview-item-content">
								<p class="preview-subject mb-1">Log out</p>
							</div>
						</a>
						<div class="dropdown-divider"></div>
						<p class="p-3 mb-0 text-center">Advanced settings</p>
					</div></li>
			</c:if>
		</ul>
		<button
			class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
			type="button" data-toggle="offcanvas">
			<span class="mdi mdi-format-line-spacing"></span>
		</button>
	</div>
</nav> --%>