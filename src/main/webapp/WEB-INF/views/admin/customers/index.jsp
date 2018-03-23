<%@include file="../../shared/header.jsp"%>
<div class="page-header">
    <h1>Customers</h1>
    <div class="pull-right">
        <p>
            <a href="${SITE_URL}/admin/customers/add" class="btn btn-primary btn-xs">
                <span class="glyphicon glyphicon-plus"></span>
            </a>
        </p>
    </div>
    <table class="table">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
   value = "/admin/customers"         <th>Contact No</th>
            <th>Status</th>
            <th>Action</th>
        </tr>

        <c:forEach var="customer" items="${customers}">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.firstName} ${customer.lastName}</td>
                <td>${customer.email}</td>
                <td>${customer.contactNum}</td>
                <td>${customer.status}</td>
                <td>
                    <a href="${SITE_URL}/admin/customers/edit/${customer.id}" class="btn btn-success">
                        <span class="glyphicon glyphicon-pencil"></span>
                    </a>

                    <a href="${SITE_URL}/admin/customers/delete/${customer.id}" class="btn btn-success">
                        <span class="glyphicon glyphicon-trash"></span>
                    </a>
                </td>
            </tr>

        </c:forEach>

    </table>

</div>


<%@include file="../../shared/footer.jsp"%>