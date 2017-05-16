<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
<%--
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
--%>

    <title>Welcome</title>

<%--
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
--%>
</head>
<body>

<div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a>
        </h2>

    </c:if>

</div>

<h1>Product List</h1>

<c:if test="${!empty listProduct}">
    <table border="1">
        <tr>
            <th width="20">ID</th>
            <th width="80">NAME</th>
            <th width="200">MANUFACTURER</th>
            <th width="80">COST</th>
            <th width="300">SPECIFICATION</th>
            <c:choose>
                <c:when test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                    <th width="60">Delete</th>
                    <th width="60">Update</th>
                </c:when>
            </c:choose>
        </tr>

        <c:forEach items="${listProduct}" var="product">
            <tr>
                <td width="20">${product.id}</td>
                <td width="80">${product.name}</td>
                <td width="200">${product.manufacturer}</td>
                <td width="80">${product.cost}</td>
                <td width="300">${product.specification}</td>
                <c:choose>
                    <c:when test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                        <td><a href="<c:url value="/welcome/remove/${product.id}"/>">Delete</a></td>
                        <td><a href="<c:url value="/welcome/update/${product.id}"/>">Update</a></td>
                    </c:when>
                </c:choose>
            </tr>
        </c:forEach>
    </table>
</c:if>
<h1></h1>
<h1></h1>
<h1></h1>
<c:choose>
    <c:when test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">

        <c:url var="addAction" value="/welcome/admin"/>

        <form:form action="${addAction}" commandName="productForm">
            <table border="1">
                <c:if test="${!empty productForm.name}">
                    <tr>
                        <td>
                            <form:label path="id">
                                <spring:message text="ID"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="id" readonly="true" disabled="true"/>
                            <form:hidden path="id"/>
                        </td>
                    </tr>
                </c:if>
                <tr>
                    <td>
                        <form:label path="name">
                            <spring:message text="NAME"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="name"/>
                    </td>
                </tr><tr>
                    <td>
                        <form:label path="manufacturer">
                            <spring:message text="MANUFACTURER"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="manufacturer"/>
                    </td>
                </tr><tr>
                    <td>
                        <form:label path="cost">
                            <spring:message text="COST"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="cost"/>
                    </td>
                </tr><tr>
                    <td>
                        <form:label path="specification">
                            <spring:message text="SPECIFICATION"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="specification"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <c:if test="${!empty productForm.name}">
                            <input type="submit" value="<spring:message text="Edit"/>">
                        </c:if>
                        <c:if test="${empty productForm.name}">
                            <input type="submit" value="<spring:message text="Add"/>">
                        </c:if>
                    </td>
                </tr>
            </table>
        </form:form>

    </c:when>
</c:choose>

<%--<c:url var="addAction" value="/welcome/admin"/>

<form:form action="${addAction}" commandName="productForm">
    <h1>Add product</h1>
</form:form>--%>
<%--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
--%>
</body>
</html>