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
<%
		String baoLoi = request.getAttribute("baoLoi")+"";
		baoLoi = (baoLoi.equals("null"))?"":baoLoi;
		
		
		String gmail= request.getAttribute("gmail")+"";	
		gmail = (gmail.equals("null"))?"":gmail;
		
		
%>
 
    <div class="card">
            <div class="card-body">
              <!-- Logo -->
              <div class="app-brand justify-content-center">
                <a href="index.html" class="app-brand-link gap-2">
                  <span class="app-brand-logo demo">
                    <svg
                      width="25"
                      viewBox="0 0 25 42"
                      version="1.1"
                      xmlns="http://www.w3.org/2000/svg"
                      xmlns:xlink="http://www.w3.org/1999/xlink"
                    >
                      <defs>
                        <path
                          d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                          id="path-1"
                        ></path>
                        <path
                          d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                          id="path-3"
                        ></path>
                        <path
                          d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                          id="path-4"
                        ></path>
                        <path
                          d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                          id="path-5"
                        ></path>
                      </defs>
                      <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                          <g id="Icon" transform="translate(27.000000, 15.000000)">
                            <g id="Mask" transform="translate(0.000000, 8.000000)">
                              <mask id="mask-2" fill="white">
                                <use xlink:href="#path-1"></use>
                              </mask>
                              <use fill="#696cff" xlink:href="#path-1"></use>
                              <g id="Path-3" mask="url(#mask-2)">
                                <use fill="#696cff" xlink:href="#path-3"></use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                              </g>
                              <g id="Path-4" mask="url(#mask-2)">
                                <use fill="#696cff" xlink:href="#path-4"></use>
                                <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                              </g>
                            </g>
                            <g
                              id="Triangle"
                              transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) "
                            >
                              <use fill="#696cff" xlink:href="#path-5"></use>
                              <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                            </g>
                          </g>
                        </g>
                      </g>
                    </svg>
                  </span>
                  <span style="font-size:25px;" class="app-brand-text  text-body fw-bolder">Đăng ký tài khoản</span>
                </a>
              </div>
              <!-- /Logo -->
              <h4 class="mb-2">Welcome! 🚀</h4>
              <p class="mb-4">Vui lòng điền đầy đủ thông tin để đăng ký tài khoản!</p>
                <div style="color:red;" class="red" id="baoLoi">
			      <%=baoLoi %>
              <form id="formAuthentication" class="mb-3"  action="<c:url value='/dang-ky'/>" method="post">
                <div class="mb-3">
                  <label for="username" class="form-label">Họ(VD:Võ,Trần,Lê)<span style="color:red">*</span></label>
                  <input
                    type="text"
                    class="form-control"
                    id="hoNguoiDung" name="hoNguoiDung" required
                    placeholder="Nhập họ của bạn"
                    autofocus
                  />
                </div>
                <div class="mb-3">
                  <label for="username" class="form-label">Tên(VD:Tấn Khôi,Trung Tín)<span style="color:red">*</span></label>
                  <input
                    type="text"
                    class="form-control"
                    id="tenNguoiDung" name="tenNguoiDung" required
                    placeholder="Nhập tên của bạn"
                    autofocus
                  />
                </div>
                <div class="mb-3">
                  <label for="email" class="form-label">Email<span style="color:red">*</span></label>
                  <input type="email" class="form-control" id="gmail" name="gmail" value="<%=gmail%>" required placeholder="Vui lòng nhập email" />
                </div>
                <div class="mb-3 form-password-toggle">
                  <label class="form-label" for="password">Mật khẩu<span style="color:red">*</span></label>
                  <div class="input-group input-group-merge">
                    <input
                      type="password"
                       id="matKhau" name="matKhau" onkeyup="kiemTraMatKhau()" required
                      class="form-control"
                     
                      placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                      aria-describedby="password"
                    />
                    <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                  </div>
                </div>
                  <div class="mb-3 form-password-toggle">
                  <label class="form-label" for="password">Nhập lại mật khẩu<span style="color:red">*</span><span style="color:red" id="msg"></span></label>
                  <div class="input-group input-group-merge">
                    <input
                      type="password"
                       id="matKhauNhapLai" name="matKhauNhapLai" onkeyup="kiemTraMatKhau()" required
                      class="form-control"
                     
                      placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                      aria-describedby="password"
                    />
                    <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                  </div>
                </div>
                <div class="mb-3">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="dongYDieuKhoan" name="dongYDieuKhoan" required="required" onchange="xuLyChonDongY()" />
                    <label style="color:black" class="form-check-label" for="terms-conditions">
                     Tôi đồng ý với
                      <a href="javascript:void(0);">chính sách & điều khoản</a>
                    </label>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary d-grid w-100" name="submit" id="submit" style="visibility: hidden;">Đăng ký</button>
              </form>

              <p class="text-center">
                <span>Bạn đã có tài khoản?</span>
                <a href="auth-login-basic.html">
                  <span>Đăng nhập</span>
                </a>
              </p>
            </div>
          </div>
 </div>
 
 
    <script type="text/javascript">
    function kiemTraMatKhau(){
		matKhau = document.getElementById("matKhau").value;
		matKhauNhapLai = document.getElementById("matKhauNhapLai").value;
		if(matKhau!=matKhauNhapLai){
			document.getElementById("msg").innerHTML = "Mật khẩu không khớp!";
			return false;
		}else{
			document.getElementById("msg").innerHTML = "<span style='color:#66FF66;'>Mật khẩu phù hợp</span>";
			return true;
		}
	}
	
	function xuLyChonDongY(){
		dongYDeuKhoan = document.getElementById("dongYDieuKhoan");
		if(dongYDeuKhoan.checked==true){
			document.getElementById("submit").style.visibility="visible";
		} else {
			document.getElementById("submit").style.visibility="hidden";
		}
	}
    </script>
</body>
</html>



 
<%-- <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-6 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">Đăng ký tài khoản</h3>
                <div style="color:red;" class="red" id="baoLoi">
			      <%=baoLoi %>
		        </div>
                <form  action="<c:url value='/dang-ky'/>" method="post">
                  <div class="form-group">
                    <label>Họ(VD:Lê,Trần,Nguyễn)<span style="color:red">*</span></label>
                    <input type="text" class="form-control p_input" id="hoNguoiDung" name="hoNguoiDung" required>
                  </div>
                   <div class="form-group">
                    <label>Tên(VD:Tấn Khôi,Kim Ngân)<span style="color:red">*</span></label>
                    <input type="text" class="form-control p_input" id="tenNguoiDung" name="tenNguoiDung" required>
                  </div>
                         <div class="form-group">
                      <!-- <label>Chức vụ của anh,chị là</label>
                      <select class="js-example-basic-single" style="width:100%" id="">
                        <option value="1">Trưởng khoa</option>
                        <option value="2">Phó trưởng khoa</option>
                        <option value="3">Giảng viên</option>
                        <option value="4">Chuyên viên</option>
                        <option value="5">Khác</option>
                      </select>
                    </div> -->
                  <div class="form-group">
                    <label>Email<span style="color:red">*</span></label>
                    <input type="email" class="form-control p_input" id="gmail" name="gmail" value="<%=gmail%>" required>
                  </div>
                  <div class="form-group">
                    <label>Mật khẩu<span style="color:red">*</span></label>
                    <input type="password" class="form-control p_input" id="matKhau" name="matKhau" onkeyup="kiemTraMatKhau()" required>
                  </div>
                   <div class="form-group">
                    <label>Nhập lại mật khẩu<span style="color:red">*</span><span style="color:red" id="msg"></span></label>
                    <input type="password" class="form-control p_input" id="matKhauNhapLai" name="matKhauNhapLai" onkeyup="kiemTraMatKhau()" required>
                  </div>
                  <div class="form-group d-flex align-items-center justify-content-between">
                    <div class="form-check">
                      <label class="form-check-label" >
                        <input type="checkbox" class="form-check-input" id="dongYDieuKhoan" name="dongYDieuKhoan" required="required" onchange="xuLyChonDongY()"> Đồng ý với điều khoản của phòng QHDN </label>
                    </div>
                    <a href="#" class="forgot-pass">Quên mật khẩu</a>
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-block enter-btn" name="submit" id="submit" style="visibility: hidden;" >Đăng ký</button>
                  </div>
                  <div class="d-flex">
                    <button class="btn btn-facebook col mr-2">
                      <i class="mdi mdi-facebook"></i> Facebook </button>
                    <button class="btn btn-google col">
                      <i class="mdi mdi-google-plus"></i> Google plus </button>
                  </div>
                  <p class="sign-up text-center">Already have an Account?<a href="#"> Sign Up</a></p>
                  <p class="terms">By creating an account you are accepting our<a href="#"> Terms & Conditions</a></p>
                </form>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>  --%>
   