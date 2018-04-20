<%@include file="../../shared/header.jsp"%>
<<<<<<< HEAD
<div class="container">

    <div class="row">
        <div class="panel panel-default filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Dipos</h3>
                <div class="pull-right">

                    <a href="${SITE_URL}/dipos/create" type= "button" class="btn btn-xs btn-primary ">
                        <span class="glyphicon glyphicon-plus">
                    </a>
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                </div>
            </div>
            <table class="table table-condensed table-hover table-striped table-bordered table-responsive table-list">
                <thead>
                    <tr class="filters">
                        <th><input type="text" class="form-control" placeholder="id" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Name" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Address" disabled></th>
                        <th><input type="text" class="form-control" placeholder="ContactNUmber" disabled></th>
                        <th><input type="text" class="form-control" placeholder="PanNumber" disabled></th>
                        <th><input type="text" class="form-control" placeholder="AddedDate" disabled></th>
                        <th>Action</th>
                        <th>AddRecords</th>
                        <th><b>transactions</b></th>


                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dipo" items="${dipos}">

=======



<div class="row">
    <div class="col-xs-12">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">
                    <a href="http://localhost:8000/categories/create" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span></a>
                    <a href="http://localhost:8000/categories" class="btn btn-danger">Clear</a>
                </h3>

                <div class="box-tools">
                    <form method="GET" action="http://localhost:8000/categories" accept-charset="UTF-8">
                        <div class="input-group input-group-sm" style="width: 150px;">

                            <input type="text" name="q" class="form-control pull-right" placeholder="Search">

                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                            </div>

                            <input name="_token" type="hidden" value="WziHaQzX3J7Cne1W20OghBgcUg2cYJsrtxgE9bRI">

                        </div>
                    </form>
                </div>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
                <table class="table table-hover">
                    <tr>
                        <th>id</th>
                        <th>name</th>
                        <th>address</th>
                        <th>contact</th>
                        <th>pan</th>

                    </tr>
                    <c:forEach var="dipo" items="${dipos}">
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
                        <tr>
                            <td>${dipo.id}</td>
                            <td>${dipo.name}</td>
                            <td>${dipo.address}</td>
                            <td>${dipo.contactNumber}</td>
                            <td>${dipo.panNumber}</td>
<<<<<<< HEAD
                            <td>${dipo.addedDate}</td>
                            <td align="">
                                <a href="${SITE_URL}/dipos/edit/${dipo.id}" class="btn btn-default"><span class="glyphicon glyphicon-pencil"> </span>    </a>
                                <a href="${SITE_URL}/dipos/delete" class="btn btn-danger"><span class="glyphicon glyphicon-trash"> </span>    </a>
                            </td>
                            <td> 
                                <a href="${SITE_URL}/transactions/create/${dipo.id}" type= "button" class="btn btn-sm btn-primary ">
                                    <span class="glyphicon glyphicon-plus"></span>
                                </a>
                                <a href="${SITE_URL}/transactions/edit/${dipo.id}" class="btn btn-default">
                                    <span class="glyphicon glyphicon-pencil"> </span> 
                                </a>
                             <td> <a href="${SITE_URL}/transactions/report/${dipo.id}" class="btn btn-default">show</a>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
=======
                        </tr>
                    </c:forEach>
                </table>
                <button type ="button" id="button">submit</button>
            </div>
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
        </div>
    </div>
</div>


<<<<<<< HEAD
<%@include file="../../shared/footer.jsp"%>
=======
            <%@include file="../../shared/footer.jsp"%>
>>>>>>> d542b4c8efb969e2dcced03e5d9df65f72be5e18
