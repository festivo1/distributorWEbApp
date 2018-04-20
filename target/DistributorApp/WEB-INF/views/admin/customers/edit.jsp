<%@include file="../../shared/header.jsp"%>
<div class="page-header">
    <h1>Edit Customers</h1>

</div>
<form name="customer" method="post" action="${SITE_URL}/admin/customers/save">
    <div class="form-group">
        <label> First Name</label>
        <input class="form-control" type="text" name="firstName" required="required" value="${customer.firstName}"/>
    </div> 
    <div  class="form-group">
        <label>Last Name</label>
        <input class="form-control" type="text" name="lastName" required="required" value="${customer.lastName}"/>
    </div>

    <div class="form-group">
        <label>Email</label>
        <input class="form-control" type="text" name="email" value="${customer.email}"/>
    </div> 

    <div class="form-group">
        <label>Contact_No</label>
        <input class="form-control"  type="text" name="contactNum" required="required" value="${customer.contactNum}"/>
    </div>    

    <div class="form-inline">
        <label>Status</label>
        <label><input type="checkbox" name="status" 
                      <c:if test="${customer.status}">
                          checked="checked"
                      </c:if>
                      /> Active</label>
    </div>

    <div>
        <input type="hidden"  name="id" value="${customer.id}"/>
        <button type="submit" name="submit" value="save " class="btn btn-success">Save</button>
        <a href="${SITE_URL}/admin/customers " class="btn btn-danger">Back</a>
    </div>
</form>

<%@include file="../../shared/footer.jsp"%>