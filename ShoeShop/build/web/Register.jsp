<%-- 
    Document   : Register
    Created on : May 26, 2022, 8:53:35 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="include/Head.jsp" %>
        <script type="text/javascript">
            function Show() {
                if (document.getElementById('myform').style.display === "none") {
                    document.getElementById('myform').style.display = "block";
                } else {
                    document.getElementById('myform').style.display = "none";
                }
            }
        </script>
    </head>
    <body>
        <%@include file="include/Header.jsp" %>
        <!-- Start Banner Area -->
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Register</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="category.html">Login/Register</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <section class="login_box_area section_gap">
            <div class="container">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="login_form_inner">      
                                <h3>Register</h3>
                                <form class="row login_form" action="Register" method="post" id="contactForm" novalidate="novalidate">
                                    <div class="col-md-12 form-group">
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Name'" value="${name}">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input type="text" class="form-control" id="name" name="username" placeholder="Username" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'" value="${usernamerg}">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input type="password" class="form-control" id="name" name="pass" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" value ="${pass}">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input type="text" class="form-control" id="name" name="phone" placeholder="Phone Number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone Number'" value = "${phone}">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input type="text" class="form-control" id="name" name="email" placeholder="Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'" value = "${email}">
                                    </div>
                                    <div class="col-md-12">
                                        <div class="creat_account d-flex" >
                                            <input type="checkbox" id="f-option2" name="selector" class="mt-1 mr-2">
                                                                                        <p onclick="Show()"  for="f-option2">I agree to the 
                                                                                            <span style="color: #007bff; cursor: pointer" >terms of service </span>and<span style="color: #007bff; cursor: pointer" > privacy policy </span></p>
                                        </div>
                                        <h7 id="myform" style="display:none"> 1.1 Tr?????c khi tr??? th??nh Ng?????i S??? D???ng c???a Trang ShoeStore, b???n c???n ?????c v?? ch???p nh???n m???i ??i???u kho???n v?? ??i???u ki???n ???????c quy ?????nh trong, v?? d???n chi???u ?????n, ??i???u Kho???n D???ch V??? n??y v?? Ch??nh S??ch B???o M???t ???????c d???n chi???u theo ????y.<br>


                                            1.2 ShoeStore b???o l??u quy???n thay ?????i, ch???nh s???a, t???m ng??ng ho???c ch???m d???t t???t c??? ho???c b???t k??? ph???n n??o c???a Trang ShoStore ho???c D???ch V??? v??o b???t c??? th???i ??i???m n??o theo quy ?????nh ph??p lu???t. Phi??n B???n th??? nghi???m c???a D???ch V??? ho???c t??nh n??ng c???a D???ch V??? c?? th??? kh??ng ho??n to??n gi???ng v???i phi??n b???n cu???i c??ng.<br>

                                            1.3 ShoStore b???o l??u quy???n t??? ch???i y??u c???u m??? T??i Kho???n ho???c c??c truy c???p c???a b???n t???i Trang ShoeStore ho???c D???ch V??? theo quy ?????nh ph??p lu???t v?? ??i???u kho???n d???ch v???.</h7>
                                    </div>
                                    <div class="col-md-12 form-group text-danger">${message1}</div>
                                    <div class="col-md-12 form-group">
                                        <button type="submit" value="submit" class="primary-btn">Create an account</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="login_box_img">
                                <img class="img-fluid" src="img/SC_Curry-9_Sager-Strong_1-1024x707.jpg" alt="">
                                <div class="hover">
                                    <h4>You already have an account?</h4>
                                    <p>Put your dreams on your feet to guide them into reality.</p>
                                    <a class="primary-btn" href="Login">LOGIN</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <%@include file="include/Footer.jsp" %>
    </body>
</html>
