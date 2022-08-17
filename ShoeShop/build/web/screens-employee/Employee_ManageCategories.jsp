<!DOCTYPE html>
<html lang="en">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Employee Dashboard - Categories</title>

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/bootstrap.css">

        <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
        <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" href="assets/css/app.css">
        <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon">
    </head>

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
                                    <li class="submenu-item active">
                                        <a href="EmployeeManageCategories">Categories</a>
                                    </li>
                                    <li class="submenu-item ">
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

                            <li class="sidebar-item has-sub">
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
                                <h3>Categories</h3>
                                <p class="text-subtitle text-muted">Catogries list</p>
                            </div>
                            <div class="col-12 col-md-6 order-md-2 order-first">
                                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="Employee">Dashboard</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Catalog - Categories</li>
                                    </ol>
                                </nav>
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
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <thead class="thead-dark">
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Category Name</th>
                                                        <th>Units In Stock</th>
                                                        <!--<th>Description</th>-->
                                                        <th>Created At</th>
                                                        <th>Sub-Category Name</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${listCategory}" var="c">
                                                        <tr>
                                                            <td>${c.getCategoryId()}</td>
                                                            <td class="text-bold-500">${c.getCategoryName()}</td>
                                                            <td>${c.getTotalProduct()}</td>
                                                            <td>${c.getCreatedAt()}</td>
                                                            <td><a href="EmployeeManageSubcategory?cateId=${c.getCategoryId()}" class="btn btn-info">View</a></td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                        <a href="EmployeeAddCategories" class="btn btn-info">Add new</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Table head options end -->

                </div>
            </div>
            <script src="./assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
            <script src="./assets/js/bootstrap.bundle.min.js"></script>

            <script src="./assets/js/main.js"></script>
    </body>

</html>