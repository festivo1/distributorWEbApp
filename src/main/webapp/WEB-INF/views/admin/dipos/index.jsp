<%@include file="../../shared/header.jsp"%>



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
                        <tr>
                            <td>${dipo.id}</td>
                            <td>${dipo.name}</td>
                            <td>${dipo.address}</td>
                            <td>${dipo.contactNumber}</td>
                            <td>${dipo.panNumber}</td>
                        </tr>
                    </c:forEach>
                </table>
                <button type ="button" id="button">submit</button>
            </div>
        </div>
    </div>
</div>


            <%@include file="../../shared/footer.jsp"%>
