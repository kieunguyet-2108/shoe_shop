<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Orders</title>

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
                            <a href="index.html"><img src="assets/images/logo/logo.png" alt="Logo" srcset="" style="height: 150px"></a>
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
                            <a href="Admin" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>
                                                
                        <li class="sidebar-item  has-sub ">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-person-badge-fill"></i>
                                <span>Accounts</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a href="AdminManageEmployees">Employees</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="AdminManageCustomers">Customers</a>
                                </li>
                            </ul>
                        </li>

                        <li class="sidebar-item  has-sub ">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-stack"></i>
                                <span>Catalog</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a href="AdminViewProducts">Products</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="AdminViewCategories">Categories</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="AdminViewBrands">Brands</a>
                                </li>
                            </ul>
                        </li>

                        <li class="sidebar-item  has-sub active">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-file-earmark-spreadsheet-fill"></i>
                                <span>Orders</span>
                            </a>
                            <ul class="submenu active">
                                <li class="submenu-item active">
                                    <a href="AdminViewOrders">Orders list</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="AdminOrderStatistics">Statistics</a>
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
                                    <a href="AdminRevenues">Revenues</a>
                                </li>
                                <li class="submenu-item ">
                                    <a href="AdminStock">Stock</a>
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
                            <h3>Orders</h3>
                            <p class="text-subtitle text-muted">Orders list</p>
                        </div>
                        <div class="col-12 col-md-6 order-md-2 order-first">
                            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Orders - Orders List</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>

                
                <section class="section">
                    <div class="card">
                        <div class="card-body">
                            <table class="table table-striped" id="table1">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Product</th>
                                        <th>Date</th>
                                        <th>Customer</th>
                                        <th>Phone</th>
                                        <th>Address</th>
                                        <th>Ship Company</th>
                                        <th>Total</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Racer TR 21 Sneaker</td>
                                        <td>21/01/2022</td>
                                        <td>Thành san</td>
                                        <td>0964820838</td>
                                        <td>Nam Định</td>
                                        <td>Giao hàng nhanh</td>
                                        <td>408.500đ</td>
                                        <td>
                                            <span class="badge bg-success">Completed</span>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>2</td>
                                        <td>Racer TR 21 Sneaker</td>
                                        <td>21/01/2022</td>
                                        <td>Tuyên san</td>
                                        <td>0964820838</td>
                                        <td>Nam Định</td>
                                        <td>Giao hàng nhanh</td>
                                        <td>408.500đ</td>
                                        <td>
                                            <span class="badge bg-danger">Cenceled</span>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>3</td>
                                        <td>Racer TR 21 Sneaker</td>
                                        <td>21/01/2022</td>
                                        <td>Nguyệt san</td>
                                        <td>0964820838</td>
                                        <td>Nam Định</td>
                                        <td>Giao hàng nhanh</td>
                                        <td>408.500đ</td>
                                        <td>
                                            <span class="badge bg-info">Confirmed</span>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>2</td>
                                        <td>Racer TR 21 Sneaker</td>
                                        <td>21/01/2022</td>
                                        <td>Jack san</td>
                                        <td>0964820838</td>
                                        <td>Nam Định</td>
                                        <td>Giao hàng nhanh</td>
                                        <td>408.500đ</td>
                                        <td>
                                            <span class="badge bg-warning">Pending</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </section>
        </div>
    </div>
    <script src="assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/main.js"></script>
</body>

</html>