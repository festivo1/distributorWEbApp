<%@include file="../../shared/header.jsp"%>
<div class="container">

    <div class="row">
        <div class="panel panel-default filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Transaction</h3>
                <div class="pull-right">

                    <a href="${SITE_URL}/transactions/create" type= "button" class="btn btn-xs btn-primary ">
                        <span class="glyphicon glyphicon-plus">
                    </a>
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                </div>
            </div>
            <table class="table table-condensed table-hover table-striped table-bordered table-responsive table-list">
                <thead>
                    <tr class="filters">
                        <th><input type="text" class="form-control" placeholder="addedDate" disabled></th>
<!--                        <th><input type="text" class="form-control" placeholder="id" disabled></th>-->
                        <th><input type="text" class="form-control" placeholder="supplier" disabled></th>
                        <th><input type="text" class="form-control" placeholder="dipo" disabled></th>
                        <th><input type="text" class="form-control" placeholder="item" disabled></th>
                        <th><input type="text" class="form-control" placeholder="price" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Refilled" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Returned" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Sold" disabled></th>
                        <th><input type="text" class="form-control" placeholder="receivedAmt" disabled></th>
                        <th><input type="text" class="form-control" placeholder="refilledAmt" disabled></th>
                        <th><input type="text" class="form-control" placeholder="leakageReceived" disabled></th>
                        <th><input type="text" class="form-control" placeholder="leakageRefilled" disabled></th>
                        
          
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="report" items="${reports}">

                        <tr>
                            <td>${report.date}</td>
                            <td>${transaction.supplier.name}</td>
                            <td>${transaction.dipo.name}</td>
                            <td>${transaction.item.name}</td>
                            <td>${transaction.item.price}</td>
                            <td>${transaction.itemReceived}</td>
                            <td>${transaction.itemRefilled}</td>
                            <td>${transaction.itemSold}</td>
                            <td>${transaction.receivedAmount}</td>
                            <td>${transaction.refilledAmount}</td>
                            <td>${transaction.leakageReceived}</td>
                            <td>${transaction.leakageReturned}</td>
                            
                            <td align="">
                                <a href="${SITE_URL}/dipo/edit/${dipo.id}" class="btn btn-default"><span class="glyphicon glyphicon-pencil"> </span>    </a>
                                <a href="${SITE_URL}/dipo/delete" class="btn btn-danger"><span class="glyphicon glyphicon-trash"> </span>    </a>
                            </td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


<%@include file="../../shared/footer.jsp"%>
