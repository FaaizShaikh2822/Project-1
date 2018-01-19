<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/view/template/header.jsp" %>
<br><br><br>
    <div class="container" style="width:80%;">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead"></p>
        </div>

        <table style="width:100%;">
           <!--  <thead>
                <tr class="bg-success">
                    <th>Proto Thumb</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th></th>
                </tr>
            </thead> -->
            <c:forEach items="${products}" var="product">
                <tr>
                    <td style="width:50%;"><img src="<c:url value="/resources/image/${product.productId}.png" />" alt="image" style="width:30%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} INR </td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span>View</a></td>
                </tr>
            </c:forEach>
        </table>
</div>
<%@ include file="/WEB-INF/view/template/footer.jsp" %>