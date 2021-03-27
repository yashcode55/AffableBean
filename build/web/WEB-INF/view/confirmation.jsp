<%-- 
    Document   : confirmation
    Created on : 24 Oct, 2020, 1:47:08 PM
    Author     : yasha
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>

<div id="singleColumn">

   <p id="confirmationText">
        <strong>successMessage</strong>
        <br><br>
       confirmationNumberMessage
        <strong>${orderRecord.confirmationNumber}</strong>
        <br>
        contactMessage
        <br><br>
        thankYouMessage
    </p>

    <div class="summaryColumn" >

        <table id="orderSummaryTable" class="detailsTable">
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
        </table>

    </div>

    <div class="summaryColumn" >

        <table id="deliveryAddressTable" class="detailsTable">
            <tr class="header">
                <th colspan="3">delivery address</th>
            </tr>

            <tr>
                <td colspan="3" class="lightBlue">
                    yash
                    <br>
                    Mumbai
                    <br>
                    1
                    <br>
                    <hr>
                    <strong>email:</strong> 
                    <br>
                    <strong>phone:</strong> 1234567890
                </td>
            </tr>
        </table>
    </div>
</div>


