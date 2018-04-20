<%@include file="../shared/header.jsp"%>
        <div class="container" >
            <h1> suppliers!</h1>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="supplier" items="${suppliers}">
                    
                    <tr>
                        <td>${supplier.id}</td>
                        <td>${supplier.fullName}</td>
                        
                        <td>Edit Delete</td><
                    </tr>
                </c:forEach>
                    
                    
                
            </table>
            <%@include file="../shared/footer.jsp"%>
            </div>
    </body>
</html>

            