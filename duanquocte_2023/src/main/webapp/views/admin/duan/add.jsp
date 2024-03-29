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
		             	id="form_submit" method="post"  >
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
												
												name="tenDuAn_TiengViet" placeholder="Nhập tên dự án tiếng việt(nếu có)"
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
										     <option value="0" selected>Chọn danh mục</option>
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
							<%-- 	<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Đơn vị trực thuộc</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
										<select  name="maDonViTrucThuoc" id="input_donvitructhuoc" class="form-select">
										     <option value="0" selected>Chọn đơn vị trực thuộc</option>
										    <c:forEach var="item" items="${donvitructhuocs}">
					
					                          <option value="${item.maDonViTrucThuoc}" >${item.tenDonViTrucThuoc}</option>
					                          	</c:forEach>
					                        </select>
											<a type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#basicModal3" href=""
												type="button" class="btn btn-warning">+Thêm dữ liệu</a>
										</div>
									</div>
								</div> --%>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Nhà tài trợ(Cơ quan,tổ chức,cá nhân...,)</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
											 <select  name="maNhaTaiTro" id="input_nhataitro" class="form-select">
										     <option value="0" selected>Chọn nhà tài trợ</option>
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
							<!-- 	<div class="row mb-3">
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
								</div> -->
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Loại viện trợ</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
											 <select  name="maLoaiVienTro" id="input_loaivientro" class="form-select">
										     <option value="0" selected>Chọn loại viện trợ</option>
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
						<!-- 		<div class="row mb-3">
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
								</div> -->
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Cơ quan phê duyệt dự án phía Việt Nam</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
											 <select  name="maCoQuanPheDuyet" id="input_coquanpheduyet" class="form-select">
										     <option value="0" selected>Chọn cơ quan phê duyệt</option>
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
							<!-- 	<div class="row mb-3">
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
								</div> -->
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Đối tác cùng thực hiện</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
											 <select  name="maDoiTacThucHien" id="input_doitacthuchien" class="form-select">
										     <option value="0" selected>Chọn đối tác thực hiện</option>
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
							<!-- 	<div class="row mb-3">
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
								</div> -->
								<div class="divider text-start">
                        <div style="color:black;border-radius: 8px;" class="divider-text bg-danger">3.Các thông tin về thành viên,mục tiêu và nội dung và các loại thiết bị tài trợ của dự án</div>
                        
                      </div>
                      	<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-default-message">Thành viên tham gia</label>
									<div class="col-sm-10">
										<textarea id="textarea_thanhvienthamgia" class="form-control"
											placeholder="Vui lòng nhập các thành viên đang tham gia dự án của bạn!"
											aria-label="Hi, Do you have a moment to talk Joe?"
											aria-describedby="basic-icon-default-message2"
											name="thanhVienThamGia"
											></textarea>
												 
									</div>
								</div>
									<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-default-message">Mục tiêu dự án</label>
									<div class="col-sm-10">
										<textarea id="textarea_muctieuduan" class="form-control"
											placeholder="Điền thông tin mục tiêu dự án?"
											aria-label="Hi, Do you have a moment to talk Joe?"
											aria-describedby="basic-icon-default-message2"
											name="mucTieuDuAn"
											></textarea>
												 
									</div>
								</div>
									<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-default-message">Nội dung thực hiện</label>
									<div class="col-sm-10">
										<textarea id="textarea_noidungthuchien" class="form-control"
											placeholder="Nội dung thực hiện?"
											aria-label="Hi, Do you have a moment to talk Joe?"
											aria-describedby="basic-icon-default-message2"
											name="noiDungThucHien"
											></textarea>
												 
									</div>
								</div>
									<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-default-message">Các thiết bị tài trợ</label>
									<div class="col-sm-10">
										<textarea id="textarea_thietbitaitro" class="form-control"
											placeholder="Thiết bị được tài trợ?"
											aria-label="Hi, Do you have a moment to talk Joe?"
											aria-describedby="basic-icon-default-message2"
											name="thietBiTaiTro"
											></textarea>
												 
									</div>
								</div>
								
                      	<div class="divider text-start">
                                   <div style="color:black;border-radius: 8px;" class="divider-text bg-danger">4.Các thông tin về kinh phí dự án và các mục liên quan</div>
                        
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
										 
									</div>
								</div>
							
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Vốn tài trợ,viện trợ</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="number"
												id="input_vontaitro" class="form-control"
												name="vonTaiTro"
												value="0"
												placeholder="Nhập vốn tài trợ" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2" onchange="calculateTotal()" />
										</div>
										 
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Vốn vay</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="number"
												id="input_vonvay" class="form-control"
												name="vonVay"
												value="0"
												placeholder="Nhập vốn vay" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2" onchange="calculateTotal()" />
										</div>
										 
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Vốn khác</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="number"
												id="input_vonkhac" class="form-control"
												placeholder="Nhập vốn khác" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2"
												name="vonKhac"
												value="0"
												onchange="calculateTotal()"
												 />
										</div>
										 
									</div>
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Vốn đối ứng</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="number"
												id="input_vondoiung" class="form-control"
												placeholder="Nhập vốn đối ứng" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2"
												name="vonDoiUng"
												value="0"
												onchange="calculateTotal()"
												 />
										</div>
										 
									</div>
								</div>
									<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-email">Tổng vốn thực hiện</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<span class="input-group-text"><i
												class='bx bx-credit-card-front'></i></span> <input type="number"
												id="input_tongvonthuchien" class="form-control"
												name="tongVonThucHien"
												value="0"
												placeholder="Nhập tổng vốn thực hiện" aria-label="john.doe"
												aria-describedby="basic-icon-default-email2" onchange="calculateTotal()"
												readonly
												 />
										</div>
										 
									</div>
									
								</div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Đơn vị tiền tệ</label>
									<div class="col-sm-6">
										<div class="input-group input-group-merge">
										   
										    <select id="input_donvitiente"  name="maDonViTienTe" class="form-select">
										     <option value="0" selected>Chọn đơn vị tiền tệ</option>
										    <c:forEach var="item" items="${donvitientes}">
					
					                          <option value="${item.maDonViTienTe}" >${item.tenDonViTienTe}</option>
					                          	</c:forEach>
					                        </select>
										  
											
											<a type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#basicModal29" href=""
												type="button" class="btn btn-warning">+Thêm dữ liệu</a>
										</div>
                                         
									</div>
								</div>
									<div class="divider text-start">
                        <div style="color:black;border-radius: 8px;" class="divider-text bg-danger">5.Các thông tin về tiến độ,thời gian của dự án</div>
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
												readonly
												 />
										</div>
										
									</div>
								</div>
								       <div class="row mb-3">
                        <label for="html5-datetime-local-input" class="col-md-2 col-form-label">Thời gian bắt đầu</label>
                        <div class="col-md-10">
                          <input
                          
                            class="form-control"
                          type="datetime-local"
                            name="thoiGianBatDau"
                            id="input_ngaybatdau"
                          />
                        
                        </div>
                        
                      </div>
                      <div class="row mb-3">
                        <label for="html5-datetime-local-input" class="col-md-2 col-form-label">Thời gian kết thúc</label>
                        <div class="col-md-10">
                          <input
                            class="form-control"
                            type="datetime-local"
                            name="thoiGianKetThuc"
                           id="input_ngayketthuc"
                          />
                        
                        </div>
                      </div>
								<div class="row mb-3">
									<label class="col-sm-2 col-form-label"
										for="basic-default-message">Tình trạng tiến độ dự án(Bao gồm tiến độ triển khai và tiến độ giải ngân)</label>
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
							<div id="spinner" style="display:none">
							  <div class="spinner-border text-primary" role="status">
							    <span class="visually-hidden">Loading...</span>
							  </div>
							</div>
								    <div
                          class="modal fade"
                          id="modalToggle"
                          aria-labelledby="modalToggleLabel"
                          tabindex="-1"
                          style="display: none"
                          aria-hidden="true"
                        >
                          <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="modalToggleLabel">Thông báo thành công! <i class='bx bx-list-check text-success'></i> </h5>
                               
                              </div>
                              <div class="modal-body">Dữ liệu của bạn vừa được lưu vào hệ thống!bạn có muốn tiếp tục upload các file minh chức không?</div>
                              <div class="modal-footer">
                                <a
                                href='<c:url value="/admin_them_file_dinhkem?action=them_file_dinhkem"/>'
                                  class="btn btn-primary"
                                 
                                >
                                  Tiếp tục
                                </a>
                               <a
                               href='<c:url value="/admin_quanly_duan?action=danhsach_duan_cuatoi&page=1&maxPageItem=20&sapxeptheothuoctinh=tenduan_tiengviet&sapxeptheochieu=desc"/>'
                                  class="btn btn-primary"
                                 
                                >
                                  Để sau
                                </a>
                              
                                 
                              </div>
                            </div>
                          </div>
                        </div>
                        
                        
                        	
								<div class="row justify-content-end" >
								
									<div class="col-sm-10">
									
										<button type="submit" class="btn btn-primary"   onclick="showSpinner()"  data-bs-toggle="modal"
                          >Lưu
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
			<!-- //Đây là xử lý đối đơn vị tiền tệ -->
		<form
			action="<c:url value='/admin_them_donvitiente?action=them_donvitiente'/>"
			id="form_submit" method="post">
			<div class="modal fade" id="basicModal29" tabindex="-1"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel1">Thêm đơn vị tiền tệ</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<div class="row">
								<div class="col mb-3">
									<label for="nameBasic" class="form-label">Tên đơn vị tiền tệ</label>
									<input type="text" id="nameBasic" class="form-control"
										name="tenDonViTienTe"
										placeholder="Vui lòng nhập tên đơn vị tiền tệ" />
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
	<script>
function calculateTotal() {
  // Lấy giá trị từ các thẻ input
  var vontaitro = parseFloat(document.getElementById("input_vontaitro").value) || 0;
  var vondoingu = parseFloat(document.getElementById("input_vondoiung").value) || 0;
  var vonvay = parseFloat(document.getElementById("input_vonvay").value) || 0;
  var vonkhac = parseFloat(document.getElementById("input_vonkhac").value) || 0;
  
  // Tính toán tổng vốn thực hiện
  var tongvonthuchien = vontaitro + vondoingu + vonvay + vonkhac;
  
  // Gán giá trị tổng vốn thực hiện cho thẻ input tương ứng
  document.getElementById("input_tongvonthuchien").value = tongvonthuchien;
}
</script>
	<script>
  function calculateDuration() {
    var startDate = new Date(document.getElementById('input_ngaybatdau').value);
    var endDate = new Date(document.getElementById('input_ngayketthuc').value);
    var diff = Math.abs(endDate - startDate);
    var years = Math.floor(diff / (1000 * 60 * 60 * 24 * 365));
    diff -= years * (1000 * 60 * 60 * 24 * 365);
    var months = Math.floor(diff / (1000 * 60 * 60 * 24 * 30));
    diff -= months * (1000 * 60 * 60 * 24 * 30);
    var days = Math.floor(diff / (1000 * 60 * 60 * 24));
    var duration = '';
    if (years > 0) {
      duration += years + ' năm, ';
    }
    if (months > 0) {
      duration += months + ' tháng, ';
    }
    if (days > 0) {
      duration += days + ' ngày';
    }
    document.getElementById('input_thoigianthuchien').value = duration;
  }

  document.getElementById('input_ngaybatdau').addEventListener('change', calculateDuration);
  document.getElementById('input_ngayketthuc').addEventListener('change', calculateDuration);
</script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
function showSpinner() {
	  document.getElementById('spinner').style.display = 'block';
	  setTimeout(function() {
	    document.getElementById('spinner').style.display = 'none';
	    document.getElementById('modalToggle').style.display = 'block';
	  }, 2000);
	}

	function showSuccessModal() {
	  showSpinner();
	}
</script>
<script>
  $(document).ready(function() {
    $("#form_submit").submit(function(e) {
      e.preventDefault(); // ngăn chặn chuyển hướng đến trang khác khi submit form
      $.ajax({
        type: "POST",
        url: $(this).attr("action"),
        data: $(this).serialize(),
        success: function(response) {
          $("#modalToggle").addClass("show"); // thêm class show cho modal
          $("#modalToggle").attr("aria-hidden", "false"); // đặt aria-hidden=false cho modal
        },
        error: function(xhr, status, error) {
          // xử lý lỗi ở đây và hiển thị modal thông báo thất bại tương tự như ở đoạn mã trên
        }
      });
    });
  });
</script>

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
		
		
		var textarea_thanhvienthamgia=document.getElementById("textarea_thanhvienthamgia");
		var textarea_muctieuduan=document.getElementById("textarea_muctieuduan");
		var textarea_noidungthuchien=document.getElementById("textarea_noidungthuchien");
		var textarea_thietbitaitro=document.getElementById("textarea_thietbitaitro");
		
		
		var input_ngaybatdau=document.getElementById("input_ngaybatdau");
		var input_ngayketthuc=document.getElementById("input_ngayketthuc");
		
	
		
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
		
		textarea_thanhvienthamgia.addEventListener("input", function() {
			sessionStorage.setItem("textarea_thanhvienthamgia", textarea_thanhvienthamgia.value);
		});
		textarea_muctieuduan.addEventListener("input", function() {
			sessionStorage.setItem("textarea_muctieuduan", textarea_muctieuduan.value);
		});
		textarea_noidungthuchien.addEventListener("input", function() {
			sessionStorage.setItem("textarea_noidungthuchien", textarea_noidungthuchien.value);
		});
		textarea_thietbitaitro.addEventListener("input", function() {
			sessionStorage.setItem("textarea_thietbitaitro", textarea_thietbitaitro.value);
		});
		
		
		input_ngaybatdau.addEventListener("input", function() {
			sessionStorage.setItem("input_ngaybatdau", input_ngaybatdau.value);
		});
		
		input_ngayketthuc.addEventListener("input", function() {
			sessionStorage.setItem("input_ngayketthuc", input_ngayketthuc.value);
		});
		
		
		
		
		
		
	
	
	
	
	
	
		
		
		// Điền dữ liệu vào các ô input khi người dùng truy cập lại trang
		window.addEventListener("load", function() {
			input_tenduan_tiengviet.value = sessionStorage.getItem("input_tenduan_tiengviet");
			input_tenduan_tienganh.value = sessionStorage.getItem("input_tenduan_tienganh");
			input_kinhphinamtruoc.value = sessionStorage.getItem("input_kinhphinamtruoc");
			input_tongvonthuchien.value = sessionStorage.getItem("input_tongvonthuchien") || "0";
			input_vontaitro.value = sessionStorage.getItem("input_vontaitro") || "0";
			input_vonvay.value = sessionStorage.getItem("input_vonvay") || "0";
			input_vonkhac.value = sessionStorage.getItem("input_vonkhac") || "0";
			input_vondoiung.value = sessionStorage.getItem("input_vondoiung") || "0";
			input_thoigianthuchien.value = sessionStorage.getItem("input_thoigianthuchien") ;
			textarea_tiendoduan.value=sessionStorage.getItem("textarea_tiendoduan") ;
			input_phantramtiendo.value = sessionStorage.getItem("input_phantramtiendo") ;
			
			textarea_thanhvienthamgia.value=sessionStorage.getItem("textarea_thanhvienthamgia") ;
			textarea_muctieuduan.value=sessionStorage.getItem("textarea_muctieuduan") ;
			textarea_noidungthuchien.value=sessionStorage.getItem("textarea_noidungthuchien") ;
			textarea_thietbitaitro.value=sessionStorage.getItem("textarea_thietbitaitro") ;
			
			input_ngaybatdau.value = sessionStorage.getItem("input_ngaybatdau") ;
			input_ngayketthuc.value = sessionStorage.getItem("input_ngayketthuc") ;
		
			
			
			
			
			
		});
	</script>
	<script type="text/javascript">
	//Danh mục
	var select_danhmuc=document.getElementById("input_danhmuc");

	select_danhmuc.addEventListener("change", function() {
	   sessionStorage.setItem("select_danhmuc", select_danhmuc.value);
	});

	window.addEventListener("load", function() {
	   var defaultOption = document.querySelector("#input_danhmuc > option[selected]");
	   var defaultValue = defaultOption.value;
	   var savedValue = sessionStorage.getItem("select_danhmuc");
	   select_danhmuc.value = savedValue || defaultValue;
	});
	
	
	
	

	
	
    //Nhà tài trợ
	var select_nhataitro=document.getElementById("input_nhataitro");

	select_nhataitro.addEventListener("change", function() {
	   sessionStorage.setItem("select_nhataitro", select_nhataitro.value);
	});

	window.addEventListener("load", function() {
	   var defaultOption = document.querySelector("#input_nhataitro > option[selected]");
	   var defaultValue = defaultOption.value;
	   var savedValue = sessionStorage.getItem("select_nhataitro");
	   select_nhataitro.value = savedValue || defaultValue;
	});
	
	
	//Loại viện trợ
	var select_loaivientro=document.getElementById("input_loaivientro");

	select_loaivientro.addEventListener("change", function() {
	   sessionStorage.setItem("select_loaivientro", select_loaivientro.value);
	});

	window.addEventListener("load", function() {
	   var defaultOption = document.querySelector("#input_loaivientro > option[selected]");
	   var defaultValue = defaultOption.value;
	   var savedValue = sessionStorage.getItem("select_loaivientro");
	   select_loaivientro.value = savedValue || defaultValue;
	});
	
	
	
    //Cơ quan phê duyệt
	var select_coquanpheduyet=document.getElementById("input_coquanpheduyet");

	select_coquanpheduyet.addEventListener("change", function() {
	   sessionStorage.setItem("select_coquanpheduyet", select_coquanpheduyet.value);
	});

	window.addEventListener("load", function() {
	   var defaultOption = document.querySelector("#input_coquanpheduyet > option[selected]");
	   var defaultValue = defaultOption.value;
	   var savedValue = sessionStorage.getItem("select_coquanpheduyet");
	   select_coquanpheduyet.value = savedValue || defaultValue;
	});
	//Đối tác thực hiện
		var select_doitacthuchien=document.getElementById("input_doitacthuchien");

	select_doitacthuchien.addEventListener("change", function() {
	   sessionStorage.setItem("select_doitacthuchien", select_doitacthuchien.value);
	});

	window.addEventListener("load", function() {
	   var defaultOption = document.querySelector("#input_doitacthuchien > option[selected]");
	   var defaultValue = defaultOption.value;
	   var savedValue = sessionStorage.getItem("select_doitacthuchien");
	   select_doitacthuchien.value = savedValue || defaultValue;
	});
	
	
	//Đơn vị tiền tệ
	
	var select_donvitiente=document.getElementById("input_donvitiente");

	select_donvitiente.addEventListener("change", function() {
	   sessionStorage.setItem("select_donvitiente", select_donvitiente.value);
	});

	window.addEventListener("load", function() {
	   var defaultOption = document.querySelector("#input_donvitiente > option[selected]");
	   var defaultValue = defaultOption.value;
	   var savedValue = sessionStorage.getItem("select_donvitiente");
	   select_donvitiente.value = savedValue || defaultValue;
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