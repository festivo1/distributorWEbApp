<%@include file="../shared/header.jsp"%>
<div class="container">
    <div class="col-md-6">
        <div class="form-area">  
            <form role="form" method="post" name="productDTO" action="${SITE_URL}/products/save">
                <br style="clear:both">
                <h3 style="margin-bottom: 25px; "> Edit Product</h3>
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control" id="name" name="productName"  value="${product.productName}">
                </div>

                <div class="form-group">
                    <label>Description</label>
                    <textarea class="form-control" type="textarea" id="productDescription" name="productDescription"  value="${product.productDescription}"></textarea>
                </div>

                <div class="row">
                    <div class="form-group col-md-6">
                        <label>Price</label>
                        <input type="text" class="form-control" id="price" name="price"   value="${product.price}">
                    </div>

                    <div class="form-group col-md-6">
                        <label>Quantity</label>
                        <input type="text" class="form-control" id="quantity" name="quantity" placeholder=" quantity"  value="${product.quantity}">
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-6">
                        <label>Category</label>
                        <select class="form-control" id="category" name="cId"  required >
                            <option value=""> ${product.category.categoryName}</option> 
                            <c:forEach var="category" items="${categories}">
                                <option value="${category.id}"> ${category.categoryName}</option> 
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group col-md-6"> 
                        <label>Supplier</label>
                        <select class="form-control" id="supplier" name="sId"  required>
                            <option>${product.supplier.fullName}</option>
                            <c:forEach var="supplier" items="${suppliers}">
                                <option value="${supplier.id}">${supplier.fullName}</option> 
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-inline">
                    <label>Status</label>
                    <input type="checkbox" name="status"
                           <c:if test="${product.status}">
                               checked="checked"
                           </c:if>
                           /> Active</label>
                </div>
                <input   name="id" value="${product.id}"/>
                <button type="submit" name="submit" value="save " class="btn btn-success">Save</button>
                <a href="${SITE_URL}/products" type="button" class="btn btn-danger" name="back" class="btn btn-default ">Back</a>
            </form>
        </div>
    </div>
    <%@include file="../shared/footer.jsp"%>