<%@page import="com.duan.model.bang_nguoidung_model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	 <%
		Object obj = session.getAttribute("nguoiDung");
		bang_nguoidung_model nguoiDung = null;
		if (obj!=null)
			nguoiDung = (bang_nguoidung_model)obj;		
			if(nguoiDung==null){		
	%>
	<h1>Bạn chưa đăng nhập vào hệ thống. Vui lòng quay lại trang chủ!</h1>
	<%
			}
			
			else 
			
			{
				
  %>
	<%
	
	String hoNguoiDung= nguoiDung.getHoNguoiDung();
	String tenNguoiDung=nguoiDung.getTenNguoiDung();
	String sdt=nguoiDung.getSdt();
	String diaChi=nguoiDung.getDiaChi();
	String gmail=nguoiDung.getGmail();
	String anhDaiDien=nguoiDung.getAnhDaiDien();
	
	%>
	    <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Cập nhật thông tin cá nhân /</span>Thông tin</h4>

              <div class="row">
                <div class="col-md-12">
                  <ul class="nav nav-pills flex-column flex-md-row mb-3">
                    <li class="nav-item">
                      <a class="nav-link active" href="javascript:void(0);"><i class="bx bx-user me-1"></i>Thông tin cá nhân</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="pages-account-settings-notifications.html"
                        ><i class="bx bx-bell me-1"></i> Thay đổi mật khẩu</a
                      >
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="pages-account-settings-connections.html"
                        ><i class="bx bx-link-alt me-1"></i> Lịch làm việc</a
                      >
                    </li>
                  </ul>
                  <div class="card mb-4">
                    <h5 class="card-header">Chi tiết thông tin cá nhân</h5>
                    <!-- Account -->
                       <form id="formAccountSettings" action=" <c:url value='/admin_thaydoithongtin?action=capnhat_anh'/> " method="post" enctype="multipart/form-data" >
                    <div class="card-body">
                      <div class="d-flex align-items-start align-items-sm-center gap-4">
                        <img
                        src="${pageContext.request.contextPath}/avatar_user/<%=anhDaiDien%>"
                          alt="user-avatar"
                          class="d-block rounded"
                        name="anhDaiDien"
                          height="100"
                          width="100"
                          id="uploadedAvatar"
                        />
                        <div class="button-wrapper">
                          <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                            <span class="d-none d-sm-block">Cập nhật ảnh đại diện</span>
                            <i class="bx bx-upload d-block d-sm-none"></i>
                            <input
                              type="file"
                              id="upload"
                              hidden
                              name="anhDaiDien"  
                              class="account-file-input"
                             
                            
                            />
                          </label>
                          <button  type="submit" class="btn btn-outline-secondary account-image-reset mb-4">
                            <i class="bx bx-reset d-block d-sm-none"></i>
                            <span class="d-none d-sm-block">Nhấn để lưu</span>
                          </button>

                          <p class="text-muted mb-0">Phù hợp JPG, GIF or PNG.Độ phân giải tối đa 800K</p>
                        </div>
                      </div>
                      
                    </div>
                    </form>
                    <hr class="my-0" />
                     <form id="formAccountSettings" action=" <c:url value='/admin_thaydoithongtin?action=capnhat_thongtin'/> " method="post"  >
                    <div class="card-body">
                        <div class="row">
                          <div class="mb-3 col-md-6">
                            <label for="firstName" class="form-label">Họ của bạn</label>
                            <input
                              class="form-control"
                              type="text"
                              id="hoNguoiDung"
							 name="hoNguoiDung"
							 value="<%=hoNguoiDung%>"
                              autofocus
                            />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">Tên của bạn</label>
                            <input class="form-control" type="text" id="tenNguoiDung"
													name="tenNguoiDung"  value="<%=tenNguoiDung%>" />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="email" class="form-label">E-mail</label>
                            <input
                              class="form-control"
                              type="text"
                              id="gmail"  value="<%=gmail%>"
													name="gmail"
                              placeholder="john.doe@example.com"
                            />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="phoneNumber">Số điện thoại</label>
                            <div class="input-group input-group-merge">
                              <span class="input-group-text">VN (+84)</span>
                              <input
                                type="text"
                                id="sdt"  value="<%=sdt%>"
													name="sdt"
                                class="form-control"
                                placeholder="202 555 0111"
                              />
                            </div>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="address" class="form-label">Địa chỉ</label>
                            <input type="text" class="form-control" id="diaChi"  value="<%=diaChi%>"
													name="diaChi" placeholder="Address" />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="country">Chức vụ</label>
                            <select id="country" class="select2 form-select">
                              <option value="">Select</option>
                              <option value="Australia">Australia</option>
                              <option value="Bangladesh">Bangladesh</option>
                              <option value="Belarus">Belarus</option>
                              <option value="Brazil">Brazil</option>
                              <option value="Canada">Canada</option>
                              <option value="China">China</option>
                              <option value="France">France</option>
                              <option value="Germany">Germany</option>
                              <option value="India">India</option>
                              <option value="Indonesia">Indonesia</option>
                              <option value="Israel">Israel</option>
                              <option value="Italy">Italy</option>
                              <option value="Japan">Japan</option>
                              <option value="Korea">Korea, Republic of</option>
                              <option value="Mexico">Mexico</option>
                              <option value="Philippines">Philippines</option>
                              <option value="Russia">Russian Federation</option>
                              <option value="South Africa">South Africa</option>
                              <option value="Thailand">Thailand</option>
                              <option value="Turkey">Turkey</option>
                              <option value="Ukraine">Ukraine</option>
                              <option value="United Arab Emirates">United Arab Emirates</option>
                              <option value="United Kingdom">United Kingdom</option>
                              <option value="United States">United States</option>
                            </select>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="language" class="form-label">Language</label>
                            <select id="language" class="select2 form-select">
                              <option value="">Select Language</option>
                              <option value="en">English</option>
                              <option value="fr">French</option>
                              <option value="de">German</option>
                              <option value="pt">Portuguese</option>
                            </select>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="timeZones" class="form-label">Timezone</label>
                            <select id="timeZones" class="select2 form-select">
                              <option value="">Select Timezone</option>
                              <option value="-12">(GMT-12:00) International Date Line West</option>
                              <option value="-11">(GMT-11:00) Midway Island, Samoa</option>
                              <option value="-10">(GMT-10:00) Hawaii</option>
                              <option value="-9">(GMT-09:00) Alaska</option>
                              <option value="-8">(GMT-08:00) Pacific Time (US & Canada)</option>
                              <option value="-8">(GMT-08:00) Tijuana, Baja California</option>
                              <option value="-7">(GMT-07:00) Arizona</option>
                              <option value="-7">(GMT-07:00) Chihuahua, La Paz, Mazatlan</option>
                              <option value="-7">(GMT-07:00) Mountain Time (US & Canada)</option>
                              <option value="-6">(GMT-06:00) Central America</option>
                              <option value="-6">(GMT-06:00) Central Time (US & Canada)</option>
                              <option value="-6">(GMT-06:00) Guadalajara, Mexico City, Monterrey</option>
                              <option value="-6">(GMT-06:00) Saskatchewan</option>
                              <option value="-5">(GMT-05:00) Bogota, Lima, Quito, Rio Branco</option>
                              <option value="-5">(GMT-05:00) Eastern Time (US & Canada)</option>
                              <option value="-5">(GMT-05:00) Indiana (East)</option>
                              <option value="-4">(GMT-04:00) Atlantic Time (Canada)</option>
                              <option value="-4">(GMT-04:00) Caracas, La Paz</option>
                            </select>
                          </div>
                          	</div>
                          	   <button type="submit"  class="btn btn-success ">Lưu thông tin</button>
                      
                    </div>
                    </form>
                    <!-- /Account -->
                  </div>
                  
                  <div class="card">
                    <h5 class="card-header">Xóa tài khoản</h5>
                    <div class="card-body">
                      <div class="mb-3 col-12 mb-0">
                        <div class="alert alert-warning">
                          <h6 class="alert-heading fw-bold mb-1">Bạn có chắc rằng bạn muốn xóa tài khoản của bạn?</h6>
                          <p class="mb-0">Sau khi bạn xóa tài khoản của mình, bạn sẽ không thể quay lại. Hãy chắc chắn.</p>
                        </div>
                      </div>
                      <form id="formAccountDeactivation" onsubmit="return false">
                        <div class="form-check mb-3">
                          <input
                            class="form-check-input"
                            type="checkbox"
                            name="accountActivation"
                            id="accountActivation"
                          />
                          <label class="form-check-label" for="accountActivation"
                            >Tôi xác nhận hủy tài khoản của mình</label
                          >
                        </div>
                        <button type="submit" class="btn btn-danger deactivate-account">Xóa tài khoản</button>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- / Content -->

         
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
	

	
	<%-- <div class="main-panel">
		<div class="content-wrapper">
			<div class="page-header">
				<h3 class="page-title">Thay đổi thông tin cá nhân</h3>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
						<li class="breadcrumb-item active" aria-current="page">Thay
							đổi thông tin</li>
					</ol>
				</nav>
			</div>
			<div class="row">
				<div class="col-12 grid-margin">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Nhập đầy đủ thông tin bên dưới</h4>
							<form action=" <c:url value='/admin_thaydoithongtin'/> "  method="post"
								class="form-sample">
								<p class="card-description">Thông tin cá nhân</p>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Họ</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="hoNguoiDung"
													name="hoNguoiDung"  value="<%=hoNguoiDung%>" />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Tên</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="tenNguoiDung"
													name="tenNguoiDung"  value="<%=tenNguoiDung%>" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Chức vụ</label>
											<div class="col-sm-9">
												<select class="form-control" id="maChucVu" name="maChucVu" >
													<option></option>
													<option value="1">Trưởng khoa</option>
													<option value="2">Phó trưởng khoa</option>
													<option value="3">Giảng viên</option>
													<option value="4">Chuyên viên</option>
													<option value="5">Khác</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Membership</label>
											<div class="col-sm-4">
												<div class="form-check">
													<label class="form-check-label"> <input
														type="radio" class="form-check-input"
														name="membershipRadios" id="membershipRadios1" value=""
														checked> Free
													</label>
												</div>
											</div>
											<div class="col-sm-5">
												<div class="form-check">
													<label class="form-check-label"> <input
														type="radio" class="form-check-input"
														name="membershipRadios" id="membershipRadios2"
														value="option2"> Professional
													</label>
												</div>
											</div>
										</div>
									</div>
								</div>
								<p class="card-description">Địa chỉ</p>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Số điện thoại</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="sdt"  value="<%=sdt%>"
													name="sdt" />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">Địa chỉ</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="diaChi"  value="<%=diaChi%>"
													name="diaChi" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">gmail</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="gmail"  value="<%=gmail%>"
													name="gmail" />
											</div>
										</div>
									</div>

								</div>
								<button type="submit" class="btn btn-primary " name="submit" id="submit">Lưu thay
									đổi</button>
							</form>
						</div>
					</div>
				</div>

				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->

				<!-- partial -->
			</div> --%>
			<%} %>
</body>
</html>