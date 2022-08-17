<%-- Document : change-password Created on : Jun 1, 2022, 7:59:29 AM Author : ADMIN --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="include/Head.jsp" %>
    </head>

    <body>
        <c:if test="${actionFor == null}">
            <%@include file="include/Header.jsp" %>
        </c:if>
        <!-- Start Banner Area -->
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Change Password</h1>
                        <nav class="d-flex align-items-center">
                            <a>User profile<span class="lnr lnr-arrow-right"></span></a>
                            <a>Home</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Banner Area -->
        <section class="login_box_area section_gap mt-0">
            <div class="container">
                <c:if test="${case != 'success'}">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-4">
                            <form class="row login_form" method="post" action="Change_password" id="contactForm"
                                  novalidate="novalidate">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="mt-2 mx-2  ">
                                            <h6 class="mb-3 text-center"
                                                style="font-size: 160%;margin-right: 10px;">CHANGE PASSWORD</h6>
                                        </div>
                                        <div class="mb-5 ml-3">
                                            <p style="text-align-last: center;color: rgb(174, 167, 167);">For account security, please do not
                                                share your password with
                                                others</p>
                                        </div>
                                        <div class="mb-4 mt-4 ">
                                            <div class="">
                                                <h6 class="mb-0  mt-2">Current Password</h6>
                                            </div>
                                            <div class="input-group mb-3 mt-3">
                                                <input type="password" class="form-control" id="current_password"
                                                       name="old_password" value="${oldPass}" required/>
                                                <div class="input-group-append">
                                                    <button class="btn btn-outline-secondary" type="button"
                                                            id="btn_current_password">
                                                        <span class="fas fa-eye"></span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=" mb-4 mt-2">
                                            <div class="">
                                                <h6 class="mb-0  mt-2">New Password</h6>
                                            </div>
                                            <div class="input-group mb-3 mt-3">
                                                <input type="password" name="new_password" class="form-control"
                                                       value="${newPass}" required id="new_password" />
                                                <div class="input-group-append ">
                                                    <button class="btn btn-outline-secondary" type="button"
                                                            id="btn_new_password">
                                                        <span class="fas fa-eye"></span>
                                                    </button>
                                                </div>
                                            </div>

                                        </div>
                                        <div class=" mb-3 mt-2">
                                            <div class="">
                                                <h6 class="mb-0 mt-2">Confirm Password</h6>
                                            </div>
                                            <div class="input-group mb-3 mt-3">
                                                <input type="password" name="confirm_password" class="form-control"
                                                       value="${cfPass}" required id="confirm_password">
                                                <div class="input-group-append ">
                                                    <button class="btn btn-outline-secondary" type="button"
                                                            id="btn_confirm_password">
                                                        <span class="fas fa-eye"></span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <p style="color: red;text-align-last: center;">${message}</p>
                                        <div class=" form-group mt-3">
                                            <!-- Button trigger modal -->
                                            <button type="submit" class="btn btn-warning py-2 "
                                                    style="width: 100%;">
                                                Complete
                                            </button>
                                        </div>
                                        <c:if test="${actionFor == null}">
                                             <a href="Forgot_password" style="margin-left: 100px;"
                                           class="text-warning">Forgot Password ?</a>
                                        </c:if>
                                        <c:if test="${actionFor != null}">
                                             <a href="Forgot_password?actionFor=${actionFor}" style="margin-left: 100px;"
                                           class="text-warning">Forgot Password ?</a>
                                        </c:if>
                                       

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </c:if>
                <c:if test="${case == 'success'}">
                    <section class="login_box_area section_gap">
                        <div class="container">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-6">
                                    <div class="login_form_inner py-5">
                                        <h3 class="mb-3" style="font-size: 160%;">${message}</h3>  
                                        <p class="mb-3 p-4">Make your choice. Do you want to stay logged in or sign in again?</p>
                                        <div class="border-bottom w-25 pb-3 pt-2" style="margin-left: 200px;"></div>
                                        <div class="col-md-12 form-group mt-3 d-flex justify-content-between">
                                            <a class="mb-3 text-white btn px-4 ml-3" style="font-size: 110%;background-color: darkorange;" href="./HomePage">Keep Login</a>
                                            <a class="mb-3 text-white btn px-4 mr-3" style="font-size: 110%;background-color: darkorange;" href="./Login?action=login_again">Back To Login</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </c:if>
            </div>
        </section>
        <script>
            document.getElementById('btn_current_password').addEventListener('click', function () {
                const inputElement = document.getElementById('current_password');
                const currentType = inputElement.getAttribute('type');
                inputElement.setAttribute(
                        'type', currentType == 'password' ? 'text' : 'password'
                        )
            })

            document.getElementById('btn_new_password').addEventListener('click', function () {
                const inputElement = document.getElementById('new_password');
                const currentType = inputElement.getAttribute('type');
                inputElement.setAttribute(
                        'type', currentType == 'password' ? 'text' : 'password'
                        )
            })

            document.getElementById('btn_confirm_password').addEventListener('click', function () {
                const inputElement = document.getElementById('confirm_password');
                const currentType = inputElement.getAttribute('type');
                inputElement.setAttribute(
                        'type', currentType == 'password' ? 'text' : 'password'
                        )
            })

        </script>
        <%@include file="include/Footer.jsp" %>

    </body>

</html>
