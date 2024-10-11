<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Dự án FlowerShop" />
                <meta name="author" content="IT" />
                <title>Dashboard </title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manage Voucher</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Voucher</li>
                                </ol>
                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-12 mx-auto">
                                            <div class="d-flex justify-content-between">
                                                <h3>Table Voucher</h3>
                                                <a href="/admin/voucher/create" class="btn btn-primary">Create a
                                                    Voucher</a>
                                            </div>

                                            <hr />
                                            <table class=" table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Code</th>
                                                        <th>Discount Value</th>
                                                        <th>Start Date</th>
                                                        <th>End Date</th>
                                                        <th>MiniMum</th>
                                                        <!-- <th>Name</th>
                                                        <th>Quantity</th> -->
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="voucher" items="${vouchers}">
                                                        <tr>
                                                            <th>${voucher.id}</th>
                                                            <td>${voucher.code}</td>
                                                            <td>
                                                                <fmt:formatNumber type="number" value="${voucher.discountValue}" /> %
                                                            </td>
                                                            <td>${voucher.startDate}</td>
                                                            <td>${voucher.endDate}</td>
                                                            <td>
                                                                <fmt:formatNumber type="number" value="${voucher.minimum}" /> đ
                                                            </td>
                                                            <!-- <td>${voucher.name}</td>
                                                            <td>${voucher.quantity}</td>
                                                            <td>
                                                                <fmt:formatNumber type="number"
                                                                    value="${product.price}" /> đ
                                                            </td>
                                                            <td>${product.factory}</td> -->
                                                            <td>
                                                                <a href="/admin/voucher/${voucher.id}"
                                                                    class="btn btn-success">View</a>
                                                                <a href="/admin/voucher/update/${voucher.id}"
                                                                    class="btn btn-warning  mx-2">Update</a>
                                                                <a href="/admin/voucher/delete/${voucher.id}"
                                                                    class="btn btn-danger">Delete</a>
                                                            </td>
                                                        </tr>

                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                            
                                                


                                        </div>

                                    </div>

                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>

            </body>

            </html>