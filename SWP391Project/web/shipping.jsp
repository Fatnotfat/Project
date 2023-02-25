<%-- 
    Document   : shippingPage
    Created on : Feb 20, 2023, 2:15:16 PM
    Author     : Chau Nhat Truong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shipping Page</title>
    </head>
    <body>
        <h1>Shipping</h1>
        <h2>Information</h2>
        <c:set var = "errors" value="${requestScope.SIGNUPFORSHIPPING_ERROR}"/>
        <form action="shippingController" method="POST">
            <c:if test="${not empty sessionScope.USER}">
                <c:set var="customerInfomation" value="${sessionScope.USER}"/>
                Name: ${customerInfomation.name}<br/>
                Address: ${customerInfomation.address}<br/>
                Phone Number: ${customerInfomation.phone}<br/>
                Email Address: ${customerInfomation.email}<br/>            
            </c:if>
            <c:if test="${empty sessionScope.USER}">
                <h3>
                    Do you already have an account?<a href="loginForCheckoutPage">Login Here</a>
                </h3>
                First Name: <input type="text" name="txtFirstName"
                                   value="${param.txtFirstName}"/><br/>
                <c:if test="${not empty errors.firstNameLengthError}">
                    <font color="red">
                    ${errors.firstNameLengthError}
                    </font><br/>
                </c:if>
                Last Name: <input type="text" name="txtLastName"
                                  value="${param.txtLastName}"/><br/>
                <c:if test="${not empty errors.lastNameLengthError}">
                    <font color="red">
                    ${errors.lastNameLengthError}
                    </font><br/>
                </c:if>
                Address: <input type="text" name="txtAddress"
                                value="${param.txtAddress}"/><br/>
                <c:if test="${not empty errors.addressLengthError}">
                    <font color="red">
                    ${errors.addressLengthError}
                    </font><br/>
                </c:if>
                Phone Number: <input type="text" name="txtPhone"
                                     value="${param.txtPhone}"/><br/>
                <c:if test="${not empty errors.phoneLengthError}">
                    <font color="red">
                    ${errors.phoneLengthError}
                    </font><br/>
                </c:if>
                Email Address: <input type="email" name="txtEmail"/><br/>
                <c:if test="${not empty errors.emailLengthError}">
                    <font color="red">
                    ${errors.emailLengthError}
                    </font><br/>
                </c:if>
                <c:if test="${not empty errors.emailIsExisted}">
                    <font color="red">
                    ${errors.emailIsExisted}
                    </font><br/>
                </c:if>
            </c:if>
            <h2>Shipping methods</h2>
            <c:if test="${not empty sessionScope}">
                <c:set var="cart" value="${sessionScope.CART}"/>
                <%--<c:if test="${not empty CART}">--%>
                <c:if test="${not empty cart}">
                    <c:set var="items" value="${cart.items}"/>
                    <c:set var="itemDetail" value = "${cart.itemDetail}" />
                    <c:if test="${not empty items}">
                        <h2>Your Cart include:</h2>
                        <table id="cartTable" border="1">
                            <thead>
                                <tr>
                                    <th>Product ID</th>
                                    <th>Product Name</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="cartList" value="${sessionScope.CART.items}" />
                                <c:set var="cartListDetail" value="${sessionScope.CART.itemDetail}" />
                                <c:forEach var="item" items="${cartList}" varStatus="counter">
                                    <c:forEach var="detail" items="${cartListDetail}">
                                        <tr id="row-${item.key}-${counter.index}">
                                            <c:if test="${item.key eq detail.key}">
                                                <td>
                                                    ${item.key}
                                                    <input type="hidden" name="txtId" value="${item.key}" />
                                                </td>
                                                <td>
                                                    ${detail.value.name}
                                                    <input type="hidden" name="txtName" value="${detail.value.name}" />
                                                </td>

                                                <td>
                                                    <button onclick="updateQuantity('${item.key}', 'minus')" id="minus_${item.key}">-</button>                             
                                                    <span id="quantity${item.key}">${item.value}</span>
                                                    <button onclick="updateQuantity('${item.key}', 'plus')" id="plus_${item.key}">+</button>
                                                    <input type="hidden" name="txtQuantity" value="${item.value}" />
                                                </td>     
                                                <td>${detail.value.price * item.value}
                                                    <input type="hidden" name="txtPrice" value="${detail.value.price * item.value}" />
                                                </td>
                                            </c:if>
                                        </tr>
                                    </c:forEach>
                                </c:forEach>
                            </tbody>
                        </table>  
                    </c:if>
                </c:if>
            </c:if>
            <input type="radio" name="chkShippingID" 
                   value="${1}" />Standard<br/>
            <c:if test="${not empty errors.shippingIDLengthError}">
                <font color="red">
                ${errors.shippingIDLengthError}
                </font><br/>
            </c:if>
            <input type="submit" value="Choose" />
        </form>
    </body>
</html>