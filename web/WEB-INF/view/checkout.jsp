<%-- 
    Document   : checkout
    Created on : 24 Oct, 2020, 1:46:57 PM
    Author     : yasha
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>





<div id="singleColumn">

    <h2>checkout</h2>

    <p>In order to purchase the items in your shopping cart, please provide us with the following information:</p>

    <form action="purchase" method="post">
        <table id="checkoutTable">
            <tr>
                <td><label for="name">name:</label></td>
                <td class="inputField">
                    <input type="text"
                           size="31"
                           maxlength="45"
                           id="name"
                           name="name"
                           value="${param.name}">
                </td>
            </tr>
            <tr>
                <td><label for="email">email:</label></td>
                <td class="inputField">
                    <input type="text"
                           size="31"
                           maxlength="45"
                           id="email"
                           name="email"
                           value="${param.email}">
                </td>
            </tr>
            <tr>
                <td><label for="phone">phone:</label></td>
                <td class="inputField">
                    <input type="text"
                           size="31"
                           maxlength="16"
                           id="phone"
                           name="phone"
                           value="${param.phone}">
                </td>
            </tr>
            <tr>
                <td><label for="address">address:</label></td>
                <td class="inputField">
                    <input type="text"
                           size="31"
                           maxlength="45"
                           id="address"
                           name="address"
                           value="${param.address}">

                    <br>
                    sector
                    <select name="cityRegion">
                        <c:forEach begin="1" end="10" var="regionNumber">
                            <option value="${regionNumber}"
                                    <c:if test="${param.cityRegion eq regionNumber}">selected</c:if>>${regionNumber}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr><td><label for="creditcard">credit card number:</label></td>
                <td class="inputField">
                    <input type="text"
                           size="31"
                           maxlength="19"
                           id="creditcard"
                           name="creditcard"
                           value="${param.creditcard}">
                </td>


            </tr>
            <tr><td><label for="creditcard">COD</label></td>
                <td class="inputField">
                    <input type="radio"
                          
                           id="creditcard"
                           name="creditcard"
                           value="">
                </td>


            </tr>
            <tr><td><label for="creditcard">provide feedback</label></td>
                <td class="inputField">
                    <input type="text"
                           size="31"
                           maxlength="19"
                           id=""
                           name="creditcard"
                           value="">
                </td>


            </tr>

            <tr>
                <td colspan="2">
                    <input type="submit" value="submit">
                </td>
            </tr>

        </table>
    </form>

    <div id="infoBox">

        <ul>
            <li>Next-day delivery is guaranteed</li>
            <li>A &#x20B9; ${initParam.deliverySurcharge}
                delivery surcharge is applied to all purchase orders</li>
        </ul>

        <table id="priceBox">
            <tr>
                <td>subtotal:</td>
                <td class="checkoutPriceColumn">
                    &#x20B9; ${cart.subtotal}</td>
            </tr>
            <tr>
                <td>delivery surcharge:</td>
                <td class="checkoutPriceColumn">
                    &#x20B9; ${initParam.deliverySurcharge}</td>
            </tr>
            <tr>
                <td class="total">total:</td>
                <td class="total checkoutPriceColumn">
                    &#x20B9; ${cart.total}</td>
            </tr>
        </table>
    </div>
</div>