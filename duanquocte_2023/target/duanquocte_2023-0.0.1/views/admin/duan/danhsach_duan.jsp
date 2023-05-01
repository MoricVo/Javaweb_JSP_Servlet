<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Danh sách dự án</title>
</head>
<body>
<form action="<c:url value='/admin_quanly_duan?action=danhsach_duan'/>" id="form_submit" method="get">
       <!-- Bootstrap Table with Header - Dark -->
       <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="card">
                <h5 class="card-header">Danh sách dự án
                
                 <button style="float:right;margin-left:10px;" class="btn btn-primary ">Xuất file Excel</button>
                        <div style="float:right" class="btn-group">
                      <button type="button" class="btn btn-info">Sắp xếp dự án</button>
                      <button
                        type="button"
                        class="btn btn-info dropdown-toggle dropdown-toggle-split"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                      >
                        <span class="visually-hidden">Toggle Dropdown</span>
                      </button>
                      <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="javascript:void(0);">Action</a></li>
                        <li><a class="dropdown-item" href="javascript:void(0);">Another action</a></li>
                        <li><a class="dropdown-item" href="javascript:void(0);">Something else here</a></li>
                        <li>
                          <hr class="dropdown-divider" />
                        </li>
                        <li><a class="dropdown-item" href="javascript:void(0);">Separated link</a></li>
                      </ul>
                    </div>
                 </h5>
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead class="table-dark">
                      <tr>
                                        <th>Chủ dự án</th>
								     	<th>Tên dự án(TV)</th>
										<th>Tên dự án(TA)</th>
									    <th>Thời gian thực hiện</th>
									    <th>Tổng vốn</th>
									    <th>Thuộc khoa</th>
										<th>Danh mục</th>
										<th>Nhà tài trợ</th>
										<th>Loại viện trợ</th>
										<th>Cơ quan phê duyệt</th>
										<th>Đối tác thực hiện</th>
										<th>Tùy chọn</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    	<c:forEach var="item" items="${duan.danhsach}" >
                      <tr>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>${item.nguoidung.tenNguoiDung}</strong></td>
                                         
                                        <td>${item.tenDuAn_TiengViet}</td>
										<td>${item.tenDuAn_TiengAnh}</td>
										<td>${item.thoiGianThucHien}</td>
										<td>${item.tongVonThucHien}</td>
                                        <td>${item.donvitructhuoc.tenDonViTrucThuoc}</td>	
                                        <td>${item.danhmuc.tenDanhMuc}</td>									
										<td>${item.nhataitro.tenNhaTaiTro}</td>
										<td>${item.loaivientro.tenLoaiVienTro}</td>
										<td>${item.coquanpheduyet.tenCoQuanPheDuyet}</td>
										<td>${item.doitacthuchien.tenDoiTacThucHien}</td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href='<c:url value="/admin_sua_duan?maDuAn=${item.maDuAn}&action=sua_duan"/>'
                                ><i class="bx bx-edit-alt me-1"></i> Edit</a
                              >
                              <a class="dropdown-item" href="javascript:void(0);"
                                ><i class="bx bx-trash me-1"></i> Delete</a
                              >
                            </div>
                          </div>
                        </td>
                      </tr>
                      </c:forEach>
      
                    </tbody>
                    		
                  </table>
                 
							
                  
                </div>
                
              </div>
              	<ul class="pagination-sm" id="pagination">

								</ul>
						    <input type="hidden" value="" id="action" name="action"/>
							<input type="hidden" value="" id="page" name="page"/>
							<input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
							<input type="hidden" value="" id="sapxeptheothuoctinh" name="sapxeptheothuoctinh"/>
							<input type="hidden" value="" id="sapxeptheochieu" name="sapxeptheochieu"/>
                 </div>
              </div>
              </form>
   <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script >
			var totalPages=${duan.totalPage};
			var currentPage=${duan.page};
			var limit=10;
				$(function() {
					window.pagObj = $('#pagination').twbsPagination({
						totalPages : totalPages,
						visiblePages :10,
						startPage:currentPage,
						onPageClick : function(event, page) {
							if(currentPage!=page)
								{
								$('#action').val('danhsach_duan');
								$('#maxPageItem').val(limit);
								$('#page').val(page);
								$('#sapxeptheothuoctinh').val('tenduan_tiengviet');
								$('#sapxeptheochieu').val('desc');
								$('#form_submit').submit();
								}
							
						}
					});
				});
	</script>
</body>
</html>
<%-- <div class="main-content">
<form action="<c:url value='/admin_quanly_duan'/>" id="form_submit" method="get">
	<div class="content-wrapper">
		<div class="page-header">
			<h3 class="page-title">Danh sách người dùng</h3>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Danh sách</a></li>
					<li class="breadcrumb-item active" aria-current="page">Thêm người dùng</li>
				</ol>
			</nav>
		</div>
		<div class="row">
			<div class="col-lg-12 grid-margin stretch-card">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">Bảng 1 	<button style="float:right" class="btn btn-primary ">Xuất file Excel</button> </h4>
						<p class="card-description">
							Dữ liệu được cập nhật từ ngày
							<code>2/2/2023</code>
						</p>
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
								
										<th>Chủ dự án</th>
								     	<th>Tên dự án(TV)</th>
										<th>Tên dự án(TA)</th>
									    <th>Thời gian thực hiện</th>
									    <th>Tổng vốn</th>
									    <th>Thuộc khoa</th>
										<th>Danh mục</th>
										<th>Nhà tài trợ</th>
										<th>Loại viện trợ</th>
										<th>Cơ quan phê duyệt</th>
										<th>Đối tác thực hiện</th>
										
									</tr>
								</thead>
								<tbody>
								<% int a=0; %>
								<c:forEach var="item" items="${duan.danhsach}" >
								<tr>
								       
							        	<td style="color:yellow;">${item.nguoidung.tenNguoiDung}</td> 
								        <td>${item.tenDuAn_TiengViet}</td>
										<td>${item.tenDuAn_TiengAnh}</td>
										<td>${item.thoiGianThucHien}</td>
										<td>${item.tongVonThucHien}</td>
                                        <td>${item.donvitructhuoc.tenDonViTrucThuoc}</td>	
                                        <td>${item.danhmuc.tenDanhMuc}</td>									
										<td>${item.nhataitro.tenNhaTaiTro}</td>
										<td>${item.loaivientro.tenLoaiVienTro}</td>
										<td>${item.coquanpheduyet.tenCoQuanPheDuyet}</td>
										<td>${item.doitacthuchien.tenDoiTacThucHien}</td>
								</tr>
								</c:forEach>
								
								</tbody>
							</table>
							<nav aria-label="Page navigation">
								<ul class="pagination-sm" id="pagination">

								</ul>
							</nav>
						
							<input type="hidden" value="" id="page" name="page"/>
							<input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
							<input type="hidden" value="" id="sapxeptheothuoctinh" name="sapxeptheothuoctinh"/>
							<input type="hidden" value="" id="sapxeptheochieu" name="sapxeptheochieu"/>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
</form>
</div> --%>
