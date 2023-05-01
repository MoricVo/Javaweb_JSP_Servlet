<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@page import="com.duan.model.bang_nguoidung_model" %>
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
		if (obj != null)
			nguoiDung = (bang_nguoidung_model) obj;
		if (nguoiDung == null) {
	%>
	<h1>Bạn chưa đăng nhập vào hệ thống. Vui lòng quay lại trang chủ!</h1>
	<%
		}

		else

		{
	%>
	<%
		int maNguoiDung = nguoiDung.getMaNguoiDung();
	   String tenDuAn_TiengViet = request.getParameter("tenDuAn_TiengViet"); 
	%>
	<div class="content-wrapper">
		<div class="container-xxl flex-grow-1 container-p-y">
			<div class="row">
				<!-- Basic Layout -->
				<!-- Basic with Icons -->
				<div class="col-xxl">
					<div class="card mb-4">
						<div
							class="card-header d-flex align-items-center justify-content-between">
							<h5 class="mb-0">Thêm dự án mới</h5>
							<small class="text-muted float-end">Vui lòng điền thông
								tin bên dưới!</small>
						</div>
						<div class="card-body">
							<form action="<c:url value='/admin_them_duan?action=them_duan'/>"
		             	id="form_submit" method="post" enctype="multipart/form-data" >
							<div class="divider text-start">
                        <div style="color:black;border-radius: 8px;" class="divider-text bg-danger">1.Thông tin về tên dự án</div>
                      </div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-fullname">Tên dự án(Tiếng
										việt)</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span id="basic-icon-default-fullname2"
												class="input-group-text"><i
												class='bx bxs-book-content'></i> </span> <input type="text"
												class="form-control" 
												id="input_tenduan_tiengviet"
												
												name="tenDuAn_TiengViet" placeholder="Nhập tên dự án"
												aria-label="John Doe"
												aria-describedby="basic-icon-default-fullname2" />
												
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-fullname">Tên dự án(Tiếng anh)</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span id="basic-icon-default-fullname2"
												class="input-group-text"><i
												class='bx bxs-book-content'></i> </span> <input type="text"
												class="form-control" 
												id="input_tenduan_tienganh"
												
												name="tenDuAn_TiengAnh" placeholder="Nhập tên dự án"
												aria-label="John Doe"
												aria-describedby="basic-icon-default-fullname2" />
										</div>
									</div>
								</div>
								<div class="divider text-start">
                        <div style="color:black; border-radius: 8px;" class="divider-text bg-danger">2.Các thông tin liên quan</div>
                      </div>
                      
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Danh mục dự án</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
										   
										    <select id="input_danhmuc"  name="maDanhMuc" class="form-select">
										     <option value="0">Chọn danh mục</option>
										    <c:forEach var="item" items="${danhmucs}">
					
					                          <option value="${item.maDanhMuc}" >${item.tenDanhMuc}</option>
					                          	</c:forEach>
					                        </select>
										  
											
											<a type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#basicModal2" href=""
												type="button" class="btn btn-warning">+Thêm dữ liệu</a>
										</div>

									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Đơn vị trực thuộc</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
										<select  name="maDonViTrucThuoc" id="input_donvitructhuoc" class="form-select">
										     <option value="0">Chọn đơn vị trực thuộc</option>
										    <c:forEach var="item" items="${donvitructhuocs}">
					
					                          <option value="${item.maDonViTrucThuoc}" >${item.tenDonViTrucThuoc}</option>
					                          	</c:forEach>
					                        </select>
											<a type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#basicModal3" href=""
												type="button" class="btn btn-warning">+Thêm dữ liệu</a>
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Nhà tài trợ</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
											 <select  name="maNhaTaiTro" id="input_nhataitro" class="form-select">
										     <option value="0">Chọn nhà tài trợ</option>
										    <c:forEach var="item" items="${nhataitros}">
					
					                          <option value="${item.maNhaTaiTro}" >${item.tenNhaTaiTro}</option>
					                          	</c:forEach>
					                        </select>
											<a type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#basicModal4" href=""
												type="button" class="btn btn-warning">+Thêm dữ liệu</a>
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Đính kèm file(nhà tài
										trợ)</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<div class="input-group">
												<label class="input-group-text" for="inputGroupFile01">Upload</label>
												<input type="file" class="form-control"
												name="file_dinhkem_nhataitro"
													id="inputGroupFile01"
												
													 />
											</div>
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Loại viện trợ</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
											 <select  name="maLoaiVienTro" id="input_loaivientro" class="form-select">
										     <option value="0">Chọn loại viện trợ</option>
										    <c:forEach var="item" items="${loaivientros}">
					
					                          <option value="${item.maLoaiVienTro}" >${item.tenLoaiVienTro}</option>
					                          	</c:forEach>
					                        </select>
												<a type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#basicModal5" href=""
												type="button" class="btn btn-warning">+Thêm dữ liệu</a>
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Đính kèm file(Loại
										viện trợ)</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<div class="input-group">
												<label class="input-group-text" for="inputGroupFile01">Upload</label>
												<input type="file" class="form-control"
												  name="file_dinhkem_vientro"
													id="inputGroupFile01" />
											</div>
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Cơ quan phê duyệt</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
											 <select  name="maCoQuanPheDuyet" id="input_coquanpheduyet" class="form-select">
										     <option value="0">Chọn cơ quan phê duyệt</option>
										    <c:forEach var="item" items="${coquanpheduyets}">
					
					                          <option value="${item.maCoQuanPheDuyet}">${item.tenCoQuanPheDuyet}</option>
					                          	</c:forEach>
					                        </select>
											<a type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#basicModal"
												href='<c:url value="/admin_them_coquanpheduyet?action=them_coquanpheduyet"/>'
												type="button" class="btn btn-warning">+Thêm dữ liệu</a>



										</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Đính kèm file(cơ quan
										phê duyệt)</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<div class="input-group">
												<label class="input-group-text" for="inputGroupFile01">Upload</label>
												<input type="file" class="form-control"
												name="file_dinhkem_coquanpheduyet"
													id="inputGroupFile01" />
											</div>
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Đối tác thực hiện</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
											 <select  name="maDoiTacThucHien" id="input_doitacthuchien" class="form-select">
										     <option value="0">Chọn đối tác thực hiện</option>
										    <c:forEach var="item" items="${doitacthuchiens}">
					
					                          <option value="${item.maDoiTacThucHien}" >${item.tenDoiTacThucHien}</option>
					                          	</c:forEach>
					                        </select>
											<a type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#basicModal6" href=""
												type="button" class="btn btn-warning">+Thêm dữ liệu</a>
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Đính kèm file(đối tác
										thực hiện)</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<div class="input-group">
												<label class="input-group-text" for="inputGroupFile01">Upload</label>
												<input type="file" class="form-control"
												name="file_dinhkem_doitacthuchien"
													id="inputGroupFile01" />
											</div>
										</div>
									</div>
								</div>
								<div class="divider text-start">
                        <div style="color:black;border-radius: 8px;" class="divider-text bg-danger">3.Các thông tin về kinh phí dự án</div>
                      </div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Kinh phí dự án năm
										trước</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="text"
												id="input_kinhphinamtruoc" class="form-control"
												placeholder="Nhập kinh phí dự án năm trước"
												aria-label="john.doe"
												name="kinhPhiDuAnNamTruoc"
												aria-describedby="basic-icon-default-email2" />
										</div>
										<div class="form-text">không bắt buộc</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Tổng vốn thực hiện</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="text"
												id="input_tongvonthuchien" class="form-control"
												name="tongVonThucHien"
												value="0"
												placeholder="Nhập tổng vốn thực hiện" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2" />
										</div>
										<div class="form-text">không bắt buộc</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Vốn tài trợ</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="text"
												id="input_vontaitro" class="form-control"
												name="vonTaiTro"
												value="0"
												placeholder="Nhập vốn tài trợ" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2" />
										</div>
										<div class="form-text">không bắt buộc</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Vốn vay</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="text"
												id="input_vonvay" class="form-control"
												name="vonVay"
												value="0"
												placeholder="Nhập vốn vay" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2" />
										</div>
										<div class="form-text">không bắt buộc</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Vốn khác</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="text"
												id="input_vonkhac" class="form-control"
												placeholder="Nhập vốn khác" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2"
												name="vonKhac"
												value="0"
												 />
										</div>
										<div class="form-text">không bắt buộc</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Vốn đối ứng</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="text"
												id="input_vondoiung" class="form-control"
												placeholder="Nhập vốn đối ứng" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2"
												name="vonDoiUng"
												value="0"
												 />
										</div>
										<div class="form-text">không bắt buộc</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Chọn đơn vị tính</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
											<input class="form-control" list="datalistOptions"
												id="exampleDataList" placeholder="Chọn đơn vị tính..." />
											<datalist id="datalistOptions">
												<option value="San Francisco"></option>
												<option value="New York"></option>
												<option value="Seattle"></option>
												<option value="Los Angeles"></option>
												<option value="Chicago"></option>
											</datalist>
											<button type="button" class="btn btn-warning">+Thêm
												dữ liệu</button>
										</div>
									</div>
								</div>
									<div class="divider text-start">
                        <div style="color:black;border-radius: 8px;" class="divider-text bg-danger">4.Các thông tin về tiến độ,thời gian của dự án</div>
                      </div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Thời gian thực hiện</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="text"
												id="input_thoigianthuchien" class="form-control"
												placeholder="Nhập thời gian thực hiện" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2"
												name="thoiGianThucHien"
												 />
										</div>
										<div class="form-text">VD:5 tháng,1 năm</div>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-default-message">Tình trạng tiến độ dự án</label>
									<div class="col-sm-10">
										<textarea id="textarea_tiendoduan" class="form-control"
											placeholder="Dự án của bạn đang trong tình trạng ra sao?"
											aria-label="Hi, Do you have a moment to talk Joe?"
											aria-describedby="basic-icon-default-message2"
											name="tienDoThucHien"
											></textarea>
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Dự án của bạn đạt được
										bao nhiêu phần trăm</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="text"
												id="input_phantramtiendo" class="form-control"
												placeholder="Nhập phần trăm tiến độ" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2"
												name="phanTramTienDoThucHien"
												 />
										</div>
										<div class="form-text">Lưu ý chỉ cần ước lượng,không cần
											chính xác tuyệt đối</div>
									</div>
								</div>

						<!-- 		<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Dự án của bạn đạt được
										bao nhiêu phần trăm</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="text"
												id="basic-icon-default-email" class="form-control"
												placeholder="Nhập phần trăm tiến độ" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2" />
										</div>
										<div class="form-text">Lưu ý chỉ cần ước lượng,không cần
											chính xác tuyệt đối</div>
									</div>
								</div>
 -->

								<!-- <div class="mb-3 row">
									<label for="html5-datetime-local-input"
										class="col-md-2 col-form-label">Ngày tạo dự án</label>
									<div class="col-md-10">
										<input class="form-control" type="datetime-local"
											value="2021-06-18T12:30:00" id="html5-datetime-local-input" />
									</div>
								</div> -->
								<div class="row justify-content-end" >
									<div class="col-sm-10">
										<button type="submit" class="btn btn-primary">Lưu
											thông tin</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>




		<!-- //Đây là xử lý cơ quan phê duyệt -->
		<form
			action="<c:url value='/admin_them_coquanpheduyet?action=them_coquanpheduyet'/>"
			id="form_submit" method="post">
			<div class="modal fade" id="basicModal" tabindex="-1"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel1">Thêm cơ quan
								phê duyệt</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<input type="hidden" id="nameBasic" class="form-control"
								name="maCoQuanPheDuyet" placeholder="Enter Name"
								value="<%=maNguoiDung%>" />
							<div class="row">
								<div class="col mb-3">
									<label for="nameBasic" class="form-label">Tên cơ quan
										phê duyệt</label> <input type="text" id="nameBasic"
										class="form-control" name="tenCoQuanPheDuyet"
										placeholder="Vui lòng nhập tên cơ quan phê duyệt" />
								</div>
							</div>
							<div class="row g-2">
								<div class="col mb-0">
									<label for="emailBasic" class="form-label">ID</label> <input
										type="text" id="emailBasic" class="form-control"
										name="maCoQuanPheDuyet" placeholder="vui lòng nhập mã cơ quan" />
								</div>
								<div class="col mb-0">
									<label for="dobBasic" class="form-label">Ngày tạo</label> <input
										type="text" id="dobBasic" class="form-control" name="ngayTao"
										placeholder="DD / MM / YY" />
								</div>
							</div>
						</div>
						<div class="modal-footer" >
							<button type="button" class="btn btn-outline-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Lưu thay
								đổi</button>
						</div>
					</div>
				</div>
			</div>
		</form>



			<!-- //Đây là xử lý danh mục -->
		<form
			action="<c:url value='/admin_them_danhmuc?action=them_danhmuc'/>"
			id="form_submit" method="post">
			<div class="modal fade" id="basicModal2" tabindex="-1"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel1">Thêm danh
								mục</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<div class="row">
								<div class="col mb-3">
									<label for="nameBasic" class="form-label">Tên danh mục</label>
									<input type="text" id="nameBasic" class="form-control"
										name="tenDanhMuc"
										placeholder="Vui lòng nhập tên cơ quan phê duyệt" />
								</div>
							</div>
							<div class="row g-2">
								<div class="col mb-0">
									<label for="emailBasic" class="form-label">ID</label> <input
										type="text" id="emailBasic" class="form-control"
										name="maDanhMuc" placeholder="vui lòng nhập mã cơ quan" />
								</div>
								<div class="col mb-0">
									<label for="dobBasic" class="form-label">Ngày tạo</label> <input
										type="text" id="dobBasic" class="form-control" name="ngayTao"
										placeholder="DD / MM / YY" />
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-outline-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Lưu thay
								đổi</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		
		
		
		
		<!-- //Đây là xử lý đơn vị trực thuộc -->
		<form
			action="<c:url value='/admin_them_donvitructhuoc?action=them_donvitructhuoc'/>"
			id="form_submit" method="post">
			<div class="modal fade" id="basicModal3" tabindex="-1"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel1">Thêm đơn vị trực thuộc</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<div class="row">
								<div class="col mb-3">
									<label for="nameBasic" class="form-label">Tên đơn vị trực thuộc</label>
									<input type="text" id="tenDonViTrucThuoc" class="form-control"
										name="tenDonViTrucThuoc"
										placeholder="Vui lòng nhập tên đơn vị trực thuộc" />
								</div>
							</div>
							<div class="row g-2">
								<div class="col mb-0">
									<label for="emailBasic" class="form-label">ID</label> <input
										type="text" id="emailBasic" class="form-control"
										name="maDonViTrucThuoc" placeholder="vui lòng nhập mã đơn vị" />
								</div>
								<div class="col mb-0">
									<label for="dobBasic" class="form-label">Ngày tạo</label> <input
										type="text" id="dobBasic" class="form-control" name="ngayTao"
										placeholder="DD / MM / YY" />
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-outline-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Lưu thay
								đổi</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		
		
		
		<!-- //Đây là xử lý nhà tài trợ -->
		<form
			action="<c:url value='/admin_them_nhataitro?action=them_nhataitro'/>"
			id="form_submit" method="post">
			<div class="modal fade" id="basicModal4" tabindex="-1"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel1">Thêm nhà tài trợ</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<div class="row">
								<div class="col mb-3">
									<label for="nameBasic" class="form-label">Tên nhà tài trợ</label>
									<input type="text" id="nameBasic" class="form-control"
										name="tenNhaTaiTro"
										placeholder="Vui lòng nhập tên nhà tài trợ" />
								</div>
							</div>
							<div class="row g-2">
								<div class="col mb-0">
									<label for="emailBasic" class="form-label">ID</label> <input
										type="text" id="emailBasic" class="form-control"
										name="maNhaTaiTro" placeholder="vui lòng nhập mã nhà tài trợ" />
								</div>
								<div class="col mb-0">
									<label for="dobBasic" class="form-label">Ngày tạo</label> <input
										type="text" id="dobBasic" class="form-control" name="ngayTao"
										placeholder="DD / MM / YY" />
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-outline-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Lưu thay
								đổi</button>
						</div>
					</div>
				</div>
			</div>
		</form>
			<!-- //Đây là xử lý loại viện trợ -->
		<form
			action="<c:url value='/admin_them_loaivientro?action=them_loaivientro'/>"
			id="form_submit" method="post">
			<div class="modal fade" id="basicModal5" tabindex="-1"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel1">Thêm loại viện trợ</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<div class="row">
								<div class="col mb-3">
									<label for="nameBasic" class="form-label">Tên loại viện trợ</label>
									<input type="text" id="nameBasic" class="form-control"
										name="tenLoaiVienTro"
										placeholder="Vui lòng nhập tên loại viện trợ" />
								</div>
							</div>
							<div class="row g-2">
								<div class="col mb-0">
									<label for="emailBasic" class="form-label">ID</label> <input
										type="text" id="emailBasic" class="form-control"
										name="maLoaiVienTro" placeholder="vui lòng nhập mã viện trợ" />
								</div>
								<div class="col mb-0">
									<label for="dobBasic" class="form-label">Ngày tạo</label> <input
										type="text" id="dobBasic" class="form-control" name="ngayTao"
										placeholder="DD / MM / YY" />
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-outline-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Lưu thay
								đổi</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		
			<!-- //Đây là xử lý đối tác thực hiện -->
		<form
			action="<c:url value='/admin_them_doitacthuchien?action=them_doitacthuchien'/>"
			id="form_submit" method="post">
			<div class="modal fade" id="basicModal6" tabindex="-1"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel1">Thêm đối tác thực hiện</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<div class="row">
								<div class="col mb-3">
									<label for="nameBasic" class="form-label">Tên đối tác thực hiện</label>
									<input type="text" id="nameBasic" class="form-control"
										name="tenDoiTacThucHien"
										placeholder="Vui lòng nhập tên đối tác thực hiện" />
								</div>
							</div>
							<div class="row g-2">
								<div class="col mb-0">
									<label for="emailBasic" class="form-label">ID</label> <input
										type="text" id="emailBasic" class="form-control"
										name="maNhaTaiTro" placeholder="vui lòng nhập mã đối tác" />
								</div>
								<div class="col mb-0">
									<label for="dobBasic" class="form-label">Ngày tạo</label> <input
										type="text" id="dobBasic" class="form-control" name="ngayTao"
										placeholder="DD / MM / YY" />
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-outline-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Lưu thay
								đổi</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
    <%
		}
	%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	

	<script type="text/javascript">
		// Lấy các phần tử input
		var input_tenduan_tiengviet = document.getElementById("input_tenduan_tiengviet");
		var input_tenduan_tienganh = document.getElementById("input_tenduan_tienganh");
		var input_kinhphinamtruoc = document.getElementById("input_kinhphinamtruoc");
		var input_tongvonthuchien = document.getElementById("input_tongvonthuchien");
		var input_vontaitro=document.getElementById("input_vontaitro");
		var input_vonvay=document.getElementById("input_vonvay");
		var input_vonkhac=document.getElementById("input_vonkhac");
		var input_vondoiung=document.getElementById("input_vondoiung");
		var input_thoigianthuchien=document.getElementById("input_thoigianthuchien");
		var textarea_tiendoduan=document.getElementById("textarea_tiendoduan");
		var input_phantramtiendo=document.getElementById("input_phantramtiendo");
		var input_danhmuc=document.getElementById("input_danhmuc");
		var input_donvitructhuoc=document.getElementById("input_donvitructhuoc");
		var input_nhataitro=document.getElementById("input_nhataitro");
		var input_loaivientro=document.getElementById("input_loaivientro");
		var input_coquanpheduyet=document.getElementById("input_coquanpheduyet");
		var input_doitacthuchien=document.getElementById("input_doitacthuchien");
		
		// Lưu trữ dữ liệu vào sessionStorage khi người dùng nhập liệu
		input_tenduan_tiengviet.addEventListener("input", function() {
			sessionStorage.setItem("input_tenduan_tiengviet", input_tenduan_tiengviet.value);
		});
		
		input_tenduan_tienganh.addEventListener("input", function() {
			sessionStorage.setItem("input_tenduan_tienganh", input_tenduan_tienganh.value);
		});
		input_kinhphinamtruoc.addEventListener("input", function() {
			sessionStorage.setItem("input_kinhphinamtruoc", input_kinhphinamtruoc.value);
		});
		input_tongvonthuchien.addEventListener("input", function() {
			sessionStorage.setItem("input_tongvonthuchien", input_tongvonthuchien.value);
		});
		input_vontaitro.addEventListener("input", function() {
			sessionStorage.setItem("input_vontaitro", input_vontaitro.value);
		});
		input_vonvay.addEventListener("input", function() {
			sessionStorage.setItem("input_vonvay", input_vonvay.value);
		});
		input_vonkhac.addEventListener("input", function() {
			sessionStorage.setItem("input_vonkhac", input_vonkhac.value);
		});
		input_vondoiung.addEventListener("input", function() {
			sessionStorage.setItem("input_vondoiung", input_vondoiung.value);
		});
		input_thoigianthuchien.addEventListener("input", function() {
			sessionStorage.setItem("input_thoigianthuchien", input_thoigianthuchien.value);
		});
		textarea_tiendoduan.addEventListener("input", function() {
			sessionStorage.setItem("textarea_tiendoduan", textarea_tiendoduan.value);
		});
		input_phantramtiendo.addEventListener("input", function() {
			sessionStorage.setItem("input_phantramtiendo", input_phantramtiendo.value);
		});
		input_danhmuc.addEventListener("input", function() {
			sessionStorage.setItem("input_danhmuc", input_danhmuc.value);
		});
		input_donvitructhuoc.addEventListener("input", function() {
			sessionStorage.setItem("input_donvitructhuoc", input_donvitructhuoc.value);
		});
		input_nhataitro.addEventListener("input", function() {
			sessionStorage.setItem("input_nhataitro", input_nhataitro.value);
		});
		input_loaivientro.addEventListener("input", function() {
			sessionStorage.setItem("input_loaivientro", input_loaivientro.value);
		});
		input_coquanpheduyet.addEventListener("input", function() {
			sessionStorage.setItem("input_coquanpheduyet", input_coquanpheduyet.value);
		});
		input_doitacthuchien.addEventListener("input", function() {
			sessionStorage.setItem("input_doitacthuchien", input_doitacthuchien.value);
		});
	
	
	
	
	
	
		
		
		// Điền dữ liệu vào các ô input khi người dùng truy cập lại trang
		window.addEventListener("load", function() {
			input_tenduan_tiengviet.value = sessionStorage.getItem("input_tenduan_tiengviet");
			input_tenduan_tienganh.value = sessionStorage.getItem("input_tenduan_tienganh");
			input_kinhphinamtruoc.value = sessionStorage.getItem("input_kinhphinamtruoc");
			input_tongvonthuchien.value = sessionStorage.getItem("input_tongvonthuchien");
			input_vontaitro.value = sessionStorage.getItem("input_vontaitro");
			input_vonvay.value = sessionStorage.getItem("input_vonvay");
			input_vonkhac.value = sessionStorage.getItem("input_vonkhac");
			input_vondoiung.value = sessionStorage.getItem("input_vondoiung");
			input_thoigianthuchien.value = sessionStorage.getItem("input_thoigianthuchien");
			textarea_tiendoduan.value=sessionStorage.getItem("textarea_tiendoduan");
			input_phantramtiendo.value = sessionStorage.getItem("input_phantramtiendo");
			input_danhmuc.value = sessionStorage.getItem("input_danhmuc");
			input_donvitructhuoc.value = sessionStorage.getItem("input_donvitructhuoc");
			input_nhataitro.value = sessionStorage.getItem("input_nhataitro");
			input_loaivientro.value = sessionStorage.getItem("input_loaivientro");
			input_coquanpheduyet.value = sessionStorage.getItem("input_coquanpheduyet");
			input_doitacthuchien.value = sessionStorage.getItem("input_doitacthuchien");
		});
	</script>
	<!-- Swap id thành tên thẻ input trong datalist -->
<!--   <script type="text/javascript">
		var categoryInput = document.getElementById("maDanhMuc");
		categoryInput.addEventListener("change", function() {
		  var selectedOption = this.value;
		  var datalist = this.list;
		  var option = null;
		  for (var i = 0; i < datalist.options.length; i++) {
		    if (datalist.options[i].value === selectedOption) {
		      option = datalist.options[i];
		      break;
		    }
		  }
		  if (option !== null) {
		    this.value = option.label;
		  }
		});
	</script>  
	<script type="text/javascript">
		var categoryInput = document.getElementById("maDonViTrucThuoc");
		categoryInput.addEventListener("change", function() {
		  var selectedOption = this.value;
		  var datalist = this.list;
		  var option = null;
		  for (var i = 0; i < datalist.options.length; i++) {
		    if (datalist.options[i].value === selectedOption) {
		      option = datalist.options[i];
		      break;
		    }
		  }
		  if (option !== null) {
		    this.value = option.label;
		  }
		});
	</script> 
	<script type="text/javascript">
	var categoryInput = document.getElementById("maNhaTaiTro");
	categoryInput.addEventListener("change", function() {
	  var selectedOption = this.value;
	  var datalist = this.list;
	  var option = null;
	  for (var i = 0; i < datalist.options.length; i++) {
	    if (datalist.options[i].value === selectedOption) {
	      option = datalist.options[i];
	      break;
	    }
	  }
	  if (option !== null) {
	    this.value = option.label;
	  }
	});
	</script>
	<script type="text/javascript">
	var categoryInput = document.getElementById("maLoaiVienTro");
	categoryInput.addEventListener("change", function() {
	  var selectedOption = this.value;
	  var datalist = this.list;
	  var option = null;
	  for (var i = 0; i < datalist.options.length; i++) {
	    if (datalist.options[i].value === selectedOption) {
	      option = datalist.options[i];
	      break;
	    }
	  }
	  if (option !== null) {
	    this.value = option.label;
	  }
	});
	</script>
	<script type="text/javascript">
	var categoryInput = document.getElementById("maCoQuanPheDuyet");
	categoryInput.addEventListener("change", function() {
	  var selectedOption = this.value;
	  var datalist = this.list;
	  var option = null;
	  for (var i = 0; i < datalist.options.length; i++) {
	    if (datalist.options[i].value === selectedOption) {
	      option = datalist.options[i];
	      break;
	    }
	  }
	  if (option !== null) {
	    this.value = option.label;
	  }
	});
	</script>
		<script type="text/javascript">
	var categoryInput = document.getElementById("maDoiTacThucHien");
	categoryInput.addEventListener("change", function() {
	  var selectedOption = this.value;
	  var datalist = this.list;
	  var option = null;
	  for (var i = 0; i < datalist.options.length; i++) {
	    if (datalist.options[i].value === selectedOption) {
	      option = datalist.options[i];
	      break;
	    }
	  }
	  if (option !== null) {
	    this.value = option.label;
	  }
	});
	</script>  -->
</body>
</html>