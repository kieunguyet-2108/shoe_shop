<!DOCTYPE html>
<html lang="en">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Employee Dashboard - Brands</title>

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
        <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" href="assets/css/app.css">
        <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <style>
        .table-filter .filter-group {
            float: right;
            margin-left: 15px;
        }
        .table-filter input, .table-filter select {
            height: 34px;
            border-radius: 3px;
            border-color: #ddd;
            box-shadow: none;
        }
        .table-filter {
            padding: 5px 0 15px;
            /*border-bottom: 1px solid #e9e9e9;*/
            margin-bottom: 5px;
        }
        .table-filter .btn {
            height: 34px;
        }
        .table-filter label {
            font-weight: normal;
            margin-left: 10px;
        }
        .table-filter select, .table-filter input {
            display: inline-block;
            margin-left: 5px;
        }
        .table-filter input {
            width: 200px;
            display: inline-block;
        }
        .filter-group select.form-control {
            width: 110px;
        }
        .filter-icon {
            float: right;
            margin-top: 7px;
        }
        .filter-icon i {
            font-size: 18px;
            opacity: 0.7;
        }	
    </style>
    <body>
        <div id="app">
            <div id="sidebar" class="active">
                <div class="sidebar-wrapper active">
                    <div class="sidebar-header">
                        <div class="d-flex justify-content-between">
                            <div class="logo">
                                <a href="index.html"><img src="assets/images/logo/logo.png" alt="Logo" style="height: 150px"></a>
                            </div>
                            <div class="toggler">
                                <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar-menu">
                        <ul class="menu">
                            <li class="sidebar-title">Menu</li>

                            <li class="sidebar-item ">
                                <a href="Employee" class='sidebar-link'>
                                    <i class="bi bi-grid-fill"></i>
                                    <span>Dashboard</span>
                                </a>
                            </li>

                            <li class="sidebar-item  has-sub active">
                                <a href="#" class='sidebar-link'>
                                    <i class="bi bi-stack"></i>
                                    <span>Catalog</span>
                                </a>
                                <ul class="submenu active">
                                    <li class="submenu-item ">
                                        <a href="EmployeeManageProducts">Products</a>
                                    </li>
                                    <li class="submenu-item ">
                                        <a href="EmployeeManageCategories">Categories</a>
                                    </li>
                                    <li class="submenu-item active">
                                        <a href="EmployeeManageBrands">Brands</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="sidebar-item  has-sub">
                                <a href="#" class='sidebar-link'>
                                    <i class="bi bi-file-earmark-spreadsheet-fill"></i>
                                    <span>Orders</span>
                                </a>
                                <ul class="submenu ">
                                    <li class="submenu-item ">
                                        <a href="EmployeeViewOrders">Orders list</a>
                                    </li>
                                    <li class="submenu-item ">
                                        <a href="EmployeeOrderStatistics">Statistics</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="sidebar-item  has-sub">
                                <a href="#" class='sidebar-link'>
                                    <i class="bi bi-bar-chart-fill"></i>
                                    <span>Reports</span>
                                </a>
                                <ul class="submenu ">
                                    <li class="submenu-item ">
                                        <a href="EmployeeRevenues">Revenues</a>
                                    </li>
                                    <li class="submenu-item ">
                                        <a href="EmployeeStock">Stock</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="sidebar-item  has-sub">
                                <a href="#" class='sidebar-link'>
                                    <i class="bi bi-bar-chart-fill"></i>
                                    <span>Profile</span>
                                </a>
                                <ul class="submenu ">
                                    <li class="submenu-item ">
                                        <a href="EmployeeShowProfile">View Profile</a>
                                    </li>
                                    
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
                </div>
            </div>
            <div id="main">
                <header class="mb-3">
                    <a href="#" class="burger-btn d-block d-xl-none">
                        <i class="bi bi-justify fs-3"></i>
                    </a>
                </header>


                <div class="page-heading">
                    <div class="page-title">
                        <div class="row">
                            <div class="col-12 col-md-6 order-md-1 order-last">
                                <h3>Brands</h3>
                                <p class="text-subtitle text-muted">Brands list</p>
                            </div>
                            <div class="col-12 col-md-6 order-md-2 order-first">
                                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="admindashboard.jsp">Dashboard</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Catalog - Brands</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>



                        <div class="table-filter">
                            <div class="row">
                                <div  class="col-sm-10">
                                    <form action="EmployeeManageBrands" method="post">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                        <label>Brand name</label>
                                        <input type="text" name="name" class="form-control" value="${name}">      
                                        <span class="filter-icon"><i class="fa fa-filter"></i></span>
                                    </form>
                                </div>
                            </div>
                        </div>


                    </div>
                    <!-- Table head options start -->
                    <section class="section">
                        <div class="row" id="table-head">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-content">
                                        <!-- table head dark -->
                                        <table class="table mb-0">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th>Index</th>
                                                    <th>Brand Name</th>
                                                    <th>Description</th>
                                                    <th>Units in stock</th>
                                                    <th>Created At</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${listBrand}" var="b">
                                                    <tr>
                                                        <td>${b.getBrandId()}</td>
                                                        <td class="text-bold-500">${b.getBrandName()}</td>
                                                        <td>   <img class="img-fluid" src="img/brand/${b.getBrandImage()}" alt="" style="width: 100px;height:100px"></td>
                                                        <td class="text-bold-500">${b.getTotalProduct()}</td>
                                                        <td>${b.getCreatedAt()}</td>
                                                        <td>${b.getStatus()}</td>
                                                        <td>            
                                                            <div class="modal fade" id="modalLoginForm${b.getBrandId()}" tabindex="-1"
                                                                 role="dialog" aria-labelledby="myModalLabel"
                                                                 aria-hidden="true">
                                                                <div class="modal-dialog" role="document">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header text-center" >
                                                                            <button type="button" class="close"
                                                                                    data-dismiss="modal" aria-label="Close">
                                                                                <span aria-hidden="true">&times;</span>
                                                                            </button>
                                                                        </div>
                                                                        <div class="modal-body mx-3">
                                                                            <div class="md-form mb-4">
                                                                                <label>The number of products for this brand is: <label style="color: red;font: bold">${b.getTotalProduct()}</label> </label>
                                                                                <label>Are you sure you want to delete ?</label>
                                                                            </div>
                                                                        </div>
                                                                        <div
                                                                            class="modal-footer d-flex justify-content-end">
                                                                            <a href="EmployeeDeleteBrand?brandid=${b.getBrandId()}"
                                                                               class="btn btn-danger">Ok</a> 
                                                                        </div>
                                                                    </div>
                                                                </div> 
                                                            </div>   
                                                            <a href=""  data-toggle="modal"
                                                               data-target="#modalLoginForm${b.getBrandId()}" title="Edit address" aria-expanded="false" class="btn btn-danger">Delete</a>
                                                            <a href="EmployeeUpdateBrand?brandid=${b.getBrandId()}&brandname=${b.getBrandName()}&description=${b.getBrandImage()}&status=${b.getStatus()}" class="btn btn-success">Edit</a></td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="EmployeeAddBrand" class="btn btn-info">Add new</a>
                </div>
                </section>
                <!-- Table head options end -->

            </div>
        </div>
        <script src="assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    </body>
</html>