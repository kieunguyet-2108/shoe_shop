<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Add categories</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/vendors/iconly/bold.css">

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

                        <li class="sidebar-item has-sub">
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
                                    <a href="Revenues">Revenues</a>
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
                            <h3>Add category</h3>
                            <p class="text-subtitle text-muted">For user to check they list</p>
                        </div>
                        <div class="col-12 col-md-6 order-md-2 order-first">
                            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Accounts - Add category</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>

                
                <!-- Table head options start -->
                <section id="multiple-column-form">
                    <div class="row match-height">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Multiple Column</h4>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <form action="EmployeeAddCategories" method="post">
                                            <div class="row">
                                                <div class="col-md-6 col-12">
                                                    <div class="form-group">
                                                        <label for="first-name-column">Category Name</label>
                                                        <input type="text" id="first-name-column" class="form-control"
                                                            placeholder="Category Name" name="name">
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-12">
                                                    <div class="form-group">
                                                        <label for="last-name-column">Description</label>
                                                        <input type="text" id="last-name-column" class="form-control"
                                                            placeholder="Description" name="des">
                                                    </div>
                                                </div>
                                                <div class="col-12 d-flex justify-content-end">
                                                    <button type="submit"
                                                        class="btn btn-primary me-1 mb-1">Submit</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Table head options end -->
        </div>
    </div>
    <script src="assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/main.js"></script>
</body>

</html>