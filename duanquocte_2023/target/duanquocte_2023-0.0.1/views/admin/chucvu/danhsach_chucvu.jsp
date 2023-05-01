<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form  action="<c:url value='/admin_quanly_chucvu'/>" id="form_submit" method="get" id="form_submit" method="get">
       <!-- Bootstrap Table with Header - Dark -->
       <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="card">
                <h5 class="card-header">
                
                Danh sách chức vụ <button style="float:right" class="btn btn-primary ">Xuất file Excel</button></h5>
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead class="table-dark">
                      <tr>
                                        <th>Mã chức vụ</th>
									    <th>Tên chức vụ</th>
									    <th>Tùy chọn</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    		<c:forEach var="item" items="${chucvu.danhsach}" >
                      <tr>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>${item.machucvu}</strong></td>
                      
                                    
										<td>${item.tenchucvu}</td>
										
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="javascript:void(0);"
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

<%-- <div class="main-content">
<form action="<c:url value='/admin_quanly_chucvu'/>" id="form_submit" method="get">
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
						<h4 class="card-title">Bảng 1 	<button style="float:right" onclick="tableToExcel()" class="btn btn-primary ">Xuất file Excel</button></h4>
						<p class="card-description">
							Dữ liệu được cập nhật từ ngày
							<code>2/2/2023</code>
						</p>
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Mã cơ chức vụ</th>
									    <th>Tên chức vụ</th>
										
									</tr>
								</thead>
								<tbody>
								<c:forEach var="item" items="${chucvu.danhsach}" >
								<tr>
										
										<td>${item.machucvu}</td>
										<td>${item.tenchucvu}</td>
										
										
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
 <script src="<c:url value='/template/twb/table2excel.js' />"></script>
 <script src="<c:url value='/template/twb/script.js' />"></script>
   <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script >
	/* var totalPages=${nguoidung.totalPage};
	var currentPage=${nguoidung.page}; */
			var totalPages=${chucvu.totalPage};
			var currentPage=${chucvu.page};
			var limit=20;
				$(function() {
					window.pagObj = $('#pagination').twbsPagination({
						totalPages : totalPages,
						visiblePages :10,
						startPage:currentPage,
						onPageClick : function(event, page) {
							if(currentPage!=page)
								{
								
								$('#maxPageItem').val(limit);
								$('#page').val(page);
								$('#sapxeptheothuoctinh').val('tenchucvu');
								$('#sapxeptheochieu').val('desc');
								$('#form_submit').submit();
								
								}
							
						}
					});
				});
	</script>
</body>
</html>