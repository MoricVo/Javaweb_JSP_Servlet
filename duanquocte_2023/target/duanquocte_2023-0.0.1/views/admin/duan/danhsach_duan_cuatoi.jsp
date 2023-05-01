<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Danh sách dự án</title>
</head>
<body>
<form action="<c:url value='/admin_quanly_duan_cuatoi?action=danhsach_duan_cuatoi'/>" id="form_submit" method="get">
       <!-- Bootstrap Table with Header - Dark -->
       <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="card">
                <h5 class="card-header">
                
                Danh sách dự án của tôi <button style="float:right" class="btn btn-primary ">Xuất file Excel</button></h5>
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
                            <a class="dropdown-item" href='<c:url value="/admin_quanly_thamgiaduan?maDuAn=${item.maDuAn}&action=them_thanhvien"/>'
                                ><i class="bx bx-edit-alt me-1"></i>Cấp quyền truy cập</a
                              >
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
                	<ul class="pagination-sm" id="pagination">

								</ul>
						    <input type="hidden" value="" id="action" name="action"/>
							<input type="hidden" value="" id="page" name="page"/>
							<input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
							<input type="hidden" value="" id="sapxeptheothuoctinh" name="sapxeptheothuoctinh"/>
							<input type="hidden" value="" id="sapxeptheochieu" name="sapxeptheochieu"/>
              </div>
                 </div>
              </div>
              </form>
   <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script >
			var totalPages=${duan.totalPage};
			var currentPage=${duan.page};
			var limit=20;
				$(function() {
					window.pagObj = $('#pagination').twbsPagination({
						totalPages : totalPages,
						visiblePages :10,
						startPage:currentPage,
						onPageClick : function(event, page) {
							if(currentPage!=page)
								{
								$('#action').val('danhsach_duan_cuatoi');
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