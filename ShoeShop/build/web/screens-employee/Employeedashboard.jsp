<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Employee Dashboard</title>

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./assets/css/bootstrap.css">

        <link rel="stylesheet" href="./assets/vendors/iconly/bold.css">

        <link rel="stylesheet" href="./assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
        <link rel="stylesheet" href="./assets/vendors/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" href="./assets/css/app.css">
        <link rel="shortcut icon" href="./assets/images/favicon.svg" type="image/x-icon">
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

                            <li class="sidebar-item active">
                                <a href="Employee" class='sidebar-link'>
                                    <i class="bi bi-grid-fill"></i>
                                    <span>Dashboard</span>
                                </a>
                            </li>

                            <li class="sidebar-item  has-sub ">
                                <a href="#" class='sidebar-link'>
                                    <i class="bi bi-stack"></i>
                                    <span>Catalog</span>
                                </a>
                                <ul class="submenu ">
                                    <li class="submenu-item ">
                                        <a href="EmployeeManageProducts">Products</a>
                                    </li>
                                    <li class="submenu-item ">
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
                    <h3>Hello, Ph??ng Ti???n Doanh!</h3>
                </div>
                <div class="page-content">
                    <!--basic load - account-->
                        <div class="row">
                            <div class="col-12 col-lg-9">
                                <div class="row">
                                    <div class="col-6 col-lg-4 col-md-6">
                                        <div class="card">
                                            <div class="card-body px-3 py-4-5">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="stats-icon purple">
                                                            <i class="iconly-boldBuy"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <h6 class="text-muted font-semibold">Orders</h6>
                                                        <h6 class="font-extrabold mb-0">${numOfOrders}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-lg-4 col-md-6">
                                        <div class="card">
                                            <div class="card-body px-3 py-4-5">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="stats-icon blue">
                                                            <i class="iconly-boldProfile"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <h6 class="text-muted font-semibold">Customers</h6>
                                                        <h6 class="font-extrabold mb-0">${numCustomers}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-lg-4 col-md-6">
                                        <div class="card">
                                            <div class="card-body px-3 py-4-5">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="stats-icon green">
                                                            <i class="iconly-boldStar"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <h6 class="text-muted font-semibold">Reviews</h6>
                                                        <h6 class="font-extrabold mb-0">${numReviews}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-lg-4 col-md-6">
                                        <div class="card">
                                            <div class="card-body px-3 py-4-5">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="stats-icon red">
                                                            <i class="iconly-boldBag"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <h6 class="text-muted font-semibold">Purchased Products</h6>
                                                        <h6 class="font-extrabold mb-0">${numPurchasedProducts}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-lg-4 col-md-6">
                                        <div class="card">
                                            <div class="card-body px-3 py-4-5">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="stats-icon green">
                                                            <i class="iconly-boldActivity"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <h6 class="text-muted font-semibold">Revenue</h6>
                                                        <h6 class="font-extrabold mb-0">${revenue}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-lg-4 col-md-6">
                                        <div class="card">
                                            <div class="card-body px-3 py-4-5">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="stats-icon purple">
                                                            <i class="iconly-boldWallet"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <h6 class="text-muted font-semibold">Profit</h6>
                                                        <h6 class="font-extrabold mb-0">${profit}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-lg-3">
                                <div class="card">
                                    <div class="card-body py-4 px-5">
                                        <div class="d-flex align-items-center">
                                            <div class="avatar avatar-xl">
                                                <img src="assets/images/faces/1.jpg" alt="Face 1">
                                            </div>
                                            <div class="ms-3 name" style="margin-left: 10px">
                                                <a href="ViewProfile" class="font-bold">${accountName}</a>
                                                <br>
                                                <a href="Logout" class="text-muted mb-0">Log out</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Order sts-->               
                        <div>
                            <div class="card ">
                                <div class="card-header">
                                    <h4>Orders</h4>
                                </div>
                                <div class="row">
                                    <div class="card-body col-9">
                                        <div id="bar"></div>
                                    </div>
                                    <div class="col-3 row">
                                        <div class="col-9 mt-4 text-muted font-semibold">
                                            <p>All orders: </p>
                                            <p>Completed orders: </p>
                                            <p>Canceled orders: </p>
                                            <p>Completion rate: </p>
                                        </div>
                                        <div class="col-3 mt-4 font-extrabold">
                                            <p>${numOfOrders}</p>
                                            <p>${numOfCpOrders}</p>
                                            <p>${numOfCcOrders}</p>
                                            <p>${completionRate}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--Pie chart-->
                        <div class="row">
                            <div class="col-6">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>Orders By Categories</h4>
                                    </div>
                                    <div class="card-body">
                                        <div id="chart-visitors-profile-1"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>Orders By Brands</h4>
                                    </div>
                                    <div class="card-body">
                                        <div id="chart-visitors-profile-2"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Revenue-->
                        <div class="card ">
                            <div class="card-header">
                                <h4>Revenue</h4>
                            </div>
                            <div class="row">
                                <div class="card-body col-9">
                                    <div id="bar-2"></div>
                                </div>
                                <div class="col-3 row">
                                    <div class="col-6 mt-4 text-muted font-semibold">
                                        <p>Revenue: </p>
                                        <p>Profit: </p>
                                        <p>Capital: </p>
                                        <p>Profit margin: </p>
                                    </div>
                                    <div class="col-6 mt-4 font-extrabold">
                                        <p>${revenue}</p>
                                        <p>${profit}</p>
                                        <p>${capital}</p>
                                        <p>${profitMargin}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Top-->
                        <div class="row">
                            <div class="col-4 pr-4">
                                <div class="card">
                                    <div class="card-header row">
                                        <h4 class="col-9">Top 5 Products</h4>
                                        <h6 class="col-3">Orders</h6>
                                    </div>
                                    <div class="card-body row py-3">
                                        <c:set var="count" value="0" scope="page" />
                                        <c:forEach items="${topPs}" var="p">
                                            <div class="col-9 mt-2 text-muted font-semibold">
                                                <a class="d-block"><c:set var="count" value="${count + 1}" scope="page"/>
                                                     ${p.name}</a>
                                            </div>
                                            <div class="col-3 d-flex justify-content-center">
                                                <a class="d-block mt-2 font-extrabold"><c:set var="count" value="${count + 1}" scope="page"/>
                                                    ${p.count} </a>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4 pr-4">
                                <div class="card">
                                    <div class="card-header row">
                                        <h4 class="col-9">Top 5 Rated Products</h4>
                                        <h6 class="col-3">Rating</h6>
                                    </div>
                                    <div class="card-body row py-3">
                                        <c:set var="count" value="0" scope="page" />
                                        <c:forEach items="${topRPs}" var="p">
                                            <div class="col-9 mt-2 text-muted font-semibold">
                                                <a class="d-block"><c:set var="count" value="${count + 1}" scope="page"/>
                                                     ${p.name}</a>
                                            </div>
                                            <div class="col-3 d-flex justify-content-center">
                                                <a class="d-block mt-2 font-extrabold"><c:set var="count" value="${count + 1}" scope="page"/>
                                                    ${p.count} </a>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="card">
                                    <div class="card-header row">
                                        <h4 class="col-9">Top 5 Customers</h4>
                                        <h6 class="col-3">Orders</h6>
                                    </div>
                                    <div class="card-body row py-3">
                                        <c:set var="count" value="0" scope="page" />
                                        <c:forEach items="${topCus}" var="c">
                                            <div class="col-9 mt-2 text-muted font-semibold">
                                                <a class="d-block"><c:set var="count" value="${count + 1}" scope="page"/>
                                                      ${c.name}</a>
                                            </div>
                                            <div class="col-3 d-flex justify-content-center">
                                                <a class="d-block mt-2 font-extrabold"><c:set var="count" value="${count + 1}" scope="page"/>
                                                    ${c.count} </a>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Region-->
                        <div class="row">

                        </div>
                </div>
            </div>
    </div>

</div>
</div>
<script src="./assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="./assets/js/bootstrap.bundle.min.js"></script>

<script src="./assets/vendors/apexcharts/apexcharts.js"></script>
<script src="./assets/vendors/dayjs/dayjs.min.js"></script>
<script>

    const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

    const d = new Date();

    // order by month
    var os = ${os};
    var oscp = ${oscp};
    var oscc = ${oscc};
    let unit = os.map(a => month[a.unit - 1]);
    let allOrders = os.map(a => a.count);
    let completedOrders = oscp.map(a => a.count);
    let cancelOrders = oscc.map(a => a.count);

    //revenue
    var rs = ${rs};
    var prfs = ${prfs};
    var cpts = ${cpts};
    console.log(prfs);
    console.log(rs);
    console.log(cpts);
    var barOptionsRevenue = {
        series: [
            {
                name: "Profit",
                data: prfs.map(a => a.revenue)
            },
            {
                name: "Revenue",
                data: rs.map(a => a.revenue)
            },
            {
                name: "Capital",
                data: cpts.map(a => a.revenue)
            },
        ],
        chart: {
            type: "bar",
            height: 350,
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: "55%",
                endingShape: "rounded",
            },
        },
        dataLabels: {
            enabled: false,
        },
        stroke: {
            show: true,
            width: 2,
            colors: ["transparent"],
        },
        xaxis: {
            categories: rs.map(a => month[a.unit - 1])},
        yaxis: {
            title: {
                text: "VND",
            },
        },
        fill: {
            opacity: 1,
        },
        tooltip: {
            y: {
                formatter: function (val) {
                    return val + " VND";
                },
            },
        },
    };



    var barOptionsOrders = {
        series: [
            {
                name: "Completed",
                data: completedOrders,
            },
            {
                name: "All",
                data: allOrders,
            },
            {
                name: "Canceled",
                data: cancelOrders,
            },
        ],
        chart: {
            type: "bar",
            height: 350,
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: "55%",
                endingShape: "rounded",
            },
        },
        dataLabels: {
            enabled: false,
        },
        stroke: {
            show: true,
            width: 2,
            colors: ["transparent"],
        },
        xaxis: {
            categories: unit},
        yaxis: {
            title: {
                text: "order(s)",
            },
        },
        fill: {
            opacity: 1,
        },
        tooltip: {
            y: {
                formatter: function (val) {
                    return val + " order(s)";
                },
            },
        },
    };


    var bar = new ApexCharts(document.querySelector("#bar"), barOptionsOrders);
    var bar2 = new ApexCharts(document.querySelector("#bar-2"), barOptionsRevenue);


    bar.render();
    bar2.render();

    var cate = ${cate};
    let optionsCategory = {
        series: cate.map(a => a.count),
        labels: cate.map(a => a.name),
        colors: ['#435ebe', '#55c6e8'],
        chart: {
            type: 'donut',
            width: '100%',
            height: '350px'
        },
        legend: {
            position: 'bottom'
        },
        plotOptions: {
            pie: {
                donut: {
                    size: '30%'
                }
            }
        }
    }

    var brands = ${brands};
    let optionsBrand = {
        series: brands.map(a => a.count),
        labels: brands.map(a => a.name),
        colors: ['#435ebe', '#55c6e8'],
        chart: {
            type: 'donut',
            width: '100%',
            height: '350px'
        },
        legend: {
            position: 'bottom'
        },
        plotOptions: {
            pie: {
                donut: {
                    size: '30%'
                }
            }
        }
    }

    var chartVisitorsProfile1 = new ApexCharts(document.getElementById('chart-visitors-profile-1'), optionsCategory)
    var chartVisitorsProfile2 = new ApexCharts(document.getElementById('chart-visitors-profile-2'), optionsBrand)

    chartVisitorsProfile1.render();
    chartVisitorsProfile2.render();
</script>

<script src="./assets/js/main.js"></script>
</body>

</html>