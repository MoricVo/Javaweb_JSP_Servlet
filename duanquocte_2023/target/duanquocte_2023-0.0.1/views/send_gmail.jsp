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
	<form action="<c:url value='/admin_send_gmail'/>" id="form_submit"
		method="post" enctype="multipart/form-data">
		<!-- Content wrapper -->
		<div class="content-wrapper">
			<!-- Content -->

			<div class="container-xxl flex-grow-1 container-p-y">
				<h4 class="fw-bold py-3 mb-4">
					<span class="text-muted fw-light">Quản trị viên/</span> Gửi email
				</h4>

				<!-- Basic Layout -->
				<div class="row">
					<div class="col-xl">
						<div class="card mb-4">
							<div
								class="card-header d-flex justify-content-between align-items-center">
								<h5 class="mb-0">Thông tin</h5>

							</div>

							<div class="card-body">

								<div class="mb-3">
									<label class="form-label" for="basic-default-email">Đến:</label>
									<div class="input-group input-group-merge">
										<input name="to" type="text" id="basic-default-email"
											class="form-control" placeholder="john.doe"
											aria-label="john.doe" aria-describedby="basic-default-email2" />
										<span class="input-group-text" id="basic-default-email2">@example.com</span>
									</div>
									<div class="form-text">You can use letters, numbers &
										periods</div>
								</div>
								<div class="mb-3">
									<label class="form-label" for="basic-default-fullname">Tiêu
										đề:</label> <input type="text" name="subject" class="form-control"
										id="basic-default-fullname" placeholder="Tiêu đề?" />
								</div>

								<div class="mb-3">
									<label class="form-label" for="basic-default-message">Nội
										dung</label>
									<textarea name="content" id="basic-default-message"
										class="form-control" placeholder="Bạn muốn nhắn nhủ điều gì?"></textarea>
								</div>
								<div class="mb-6">
									<div class="col-xl-12">
										<div class="card mb-8">
											<h5 class="card-header">Những thông tin yêu cầu chủ dự án báo cáo bao gồm</h5>
											<!-- Checkboxes and Radios -->
											<div class="card-body">
												<div class="row gy-3">
													<div class="col-md">
														<small class="text-light fw-semibold">Mục 1</small>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value="Tên dự án" name="checkbox1"
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Tên dự án(TV,TA) </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value="Danh mục" name="checkbox2"
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Danh mục </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value="Đơn vị trực thuộc" name="checkbox3"
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Đơn vị trực thuộc </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Nhà tài trợ+(Đính kèm file) </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Loại viện trợ+(Đính kèm file) </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Cơ quan phê duyệt+(Đính kèm file) </label>
														</div>

													</div>
													<div class="col-md">
														<small class="text-light fw-semibold">Mục 2</small>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Đối tác thực hiện+(Đính kèm file) </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Kinh phí dự án năm rồi </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Tổng vốn thực hiện </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Vốn tài trợ </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Vốn vay </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Vốn khác </label>
														</div>

													</div>
													<div class="col-md">
														<small class="text-light fw-semibold">Mục 3</small>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Vốn đối ứng </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Thời gian thực hiện </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Tình trạng </label>
														</div>
														<div class="form-check mt-3">
															<input class="form-check-input" type="checkbox" value=""
																id="defaultCheck1" /> <label class="form-check-label"
																for="defaultCheck1"> Phần trăm dự án </label>
														</div>
														
													</div>
												</div>
											</div>
											<hr class="m-0" />
											<!-- Inline Checkboxes -->

										</div>

										<!-- Switches -->


										<!-- Range -->

									</div>

								</div>
								<div class="mb-3">
								  
									<label class="col-sm-2 col-form-label"
										for="basic-icon-default-company">Đính kèm file
										</label>
									<div class="col-sm-10">
										<div class="input-group input-group-merge">
											<div class="input-group">
												<label class="input-group-text" for="inputGroupFile01">Upload</label>
												<input type="file" class="form-control"
												name="attachment"
													id="inputGroupFile01"
												
													 />
											</div>
										</div>
									</div>
								
								</div>
								<button type="submit" class="btn btn-primary">Gửi</button>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- / Content -->

			<!-- Footer -->

			<!-- / Footer -->

			<div class="content-backdrop fade"></div>
		</div>
	</form>
</body>
</html>