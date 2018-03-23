<%@include file="../shared/header.jsp"%>
<div class="container">

    <div class="row">
        <div class="panel panel-default filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Products</h3>
                <div class="pull-right">

                    <a href="${SITE_URL}/products/create" type= "button" class="btn btn-xs btn-primary ">
                        <span class="glyphicon glyphicon-plus">
                    </a>
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                </div>
            </div>
            <table class="table table-bordered table-striped table-list">
                <thead>
                    <tr class="filters">
                        <th><input type="text" class="form-control" placeholder="id" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Name" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Category" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Supplier" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Price" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Quantity" disabled></th>
                        <th><input type="text" class="form-control" placeholder="status" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Action" disabled></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${products}">

                        <tr>
                            <td>${product.id}</td>
                            <td>${product.productName}</td>
                            <td>${product.category.categoryName}</td>
                            <td>${product.supplier.fullName}</td>
                            <td>${product.price}</td>
                            <td>${product.quantity}</td>
                            <td>${product.status}</td>
                            <td align="">
                                <a href="${SITE_URL}/products/edit/${product.id}" class="btn btn-default"><span class="glyphicon glyphicon-pencil"> </span>    </a>
                                <a href="${SITE_URL}/products/delete" class="btn btn-danger"><span class="glyphicon glyphicon-trash"> </span>    </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@include file="../shared/footer.jsp"%>
