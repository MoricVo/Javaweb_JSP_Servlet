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
		String baoLoi = request.getAttribute("baoLoi")+"";
		baoLoi = (baoLoi.equals("null"))?"":baoLoi;
	
		
		String maNguoiDung= request.getAttribute("maNguoiDung")+"";	
		maNguoiDung = (maNguoiDung.equals("null"))?"":maNguoiDung;
		
		String maDuAn= request.getAttribute("maDuAn")+"";	
		maDuAn = (maDuAn.equals("null"))?"":maDuAn;
		
	%>
	<!-- Content wrapper -->
	<div class="content-wrapper">
		<!-- Content -->
    
		<div class="container-xxl flex-grow-1 container-p-y">
			<h4 class="fw-bold py-3 mb-4">
				<span class="text-muted fw-light">Thêm/</span> Thêm thành viên tham
				gia
			</h4>

			<!-- Basic Layout -->
			<div class="row">
				<div class="col-xl">
					<div class="card mb-4">
						<div
							class="card-header d-flex justify-content-between align-items-center">
							<h5 class="mb-0">Thêm thành viên tham gia dự án</h5>
							<small class="text-muted float-end">Default label</small>
						</div>
						<div class="card-body">
							<c:set var="c" value="${requestScope.duan}" />
							<form action="<c:url value='/admin_quanly_thamgiaduan?action=them_thanhvien'/>"
								id="form_submit" method="post">
								<input type="hidden" value="${c.maDuAn}" id="maDuAn"
									name="maDuAn" />

								<div class="mb-3">
									<label class="form-label" for="basic-default-company">Ghi
										chú</label> <input type="text" class="form-control" name=ghiChu
										id="basic-default-company" placeholder="ACME Inc." />
								</div>
								<div class="mb-3">
									<label class="form-label" for="basic-default-email">Tình
										trạng dự án</label>
									<div class="input-group input-group-merge">
										<input type="text" id="basic-default-email"
										name="tinhTrang"
											class="form-control" placeholder="john.doe"
											aria-label="john.doe" aria-describedby="basic-default-email2" />
										<span class="input-group-text" id="basic-default-email2">@example.com</span>
									</div>
									<div class="form-text">You can use letters, numbers &
										periods</div>
								</div>
								<div class="mb-6">
									<div class="col-xl-12">
										<div class="card mb-8">
											<h5 class="card-header">Chọn thành viên</h5>
											<!-- Checkboxes and Radios -->
											
											<small style="color:red;"><%=baoLoi %></small>
											<div class="card-body">
												<div class="row gy-3">
													<div class="col-md">
														<small class="text-light fw-semibold">Mục 1</small>
														<c:forEach var="item" items="${nguoidungs}">
														<c:if test="${item.maDanhMuc!=duan.maDanhMuc }">
															<div class="form-check mt-3">
																<input class="form-check-input" type="checkbox"
																	value="${item.maNguoiDung}" name="maNguoiDung"
																	id="maNguoiDung" /> <label class="form-check-label"
																	for="defaultCheck1"> ${item.tenNguoiDung} </label>
															</div>
														 </c:if>
														</c:forEach>


													</div>
												</div>
											</div>

											<!-- Inline Checkboxes -->

										</div>

									</div>

								</div>




								<button type="submit" class="btn btn-primary">Send</button>
							</form>
						</div>
					</div>
				</div>


			</div>
		</div>
		<!-- / Content -->

		<!-- Footer -->
		<footer class="content-footer footer bg-footer-theme">
			<div
				class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
				<div class="mb-2 mb-md-0">
					©
					<script>
						document.write(new Date().getFullYear());
					</script>
					, made with ❤️ by <a href="https://themeselection.com"
						target="_blank" class="footer-link fw-bolder">ThemeSelection</a>
				</div>
				<div>
					<a href="https://themeselection.com/license/"
						class="footer-link me-4" target="_blank">License</a> <a
						href="https://themeselection.com/" target="_blank"
						class="footer-link me-4">More Themes</a> <a
						href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
						target="_blank" class="footer-link me-4">Documentation</a> <a
						href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
						target="_blank" class="footer-link me-4">Support</a>
				</div>
			</div>
		</footer>
		<!-- / Footer -->

		<div class="content-backdrop fade"></div>
	</div>
</body>
</html>