<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Unis Suppliers Pvt. Ltd | Dashboard</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link href="${SITE_URL}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${SITE_URL}/static/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <script src="${SITE_URL}/static/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${SITE_URL}/static/js/jquery.min.js" type="text/javascript"></script>
        <link href="${SITE_URL}/static/css/bootstrasp.contactform.css" rel="stylesheet" type="text/css"/>
        <script src="${SITE_URL}/static/js/bootstrap.contactform.js" type="text/javascript"></script>
        <script src="${SITE_URL}/static/js/javascript.table.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link href="${SITE_URL}/static/css/bootstrap.table.css" rel="stylesheet" type="text/css"/>
        <!-- Optional theme -->

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery.min.js"></script>

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body>
        <div class="container">

           
                <div class="panel panel-default filterable">
                  

                    <label>Dipos</label>
                    <select class="form-control" id="dipo" name="dname"  required>
                        <option value="">Click Your Dipo for Transactions</option>
                        <c:forEach var="dipo" items="${dipos}">
                            <option value="${dipo.id}" > ${dipo.name}</option> 
                        </c:forEach>
                    </select>
               
               
                </div>
           
        </div>

    </body>
</html>
=======
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
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
