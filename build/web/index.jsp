<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 23 Oct, 2020, 11:17:21 PM
    Author     : yasha
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>



<%--<sql:query var="categories" dataSource="jdbc/affablebean">
    SELECT * FROM category
</sql:query>--%>
    
    
<div id="indexLeftColumn">
    <div id="welcomeText">
         <p>Welcome to the online home of the Arabica Bean Green
            Grocer.
            <br><br>
            Enjoy browsing and learning more about our unique home 
            delivery service bringing you fresh organic produce, dairy, meats,
            breads and other delicious and healthy items to your doorstep


            <!--test to asscess context parameter--> 
            <!--                    categoryImagePath: ${initParam.categoryImagePath}
                                productImagePath: ${initParam.productImagePath}
            -->


        </p>
       
    </div>

</div>
<div id="indexRightColumn">
    
    
    <c:forEach var="category" items="${categories}">
        <div class="categoryBox">
                        <a href="category?${category.id}">

                            <span class="categoryLabelText">${category.name}</span>

                            <img src="${initParam.categoryImagePath}${category.name}.jpg"
                                 alt="${category.name}">
                        </a>
                    </div>
    </c:forEach>
</div>
    
<!--    <div class="categoryBox">
        <a href="#">
            <span class="categoryLabelText">
                dairy
            </span> 
        </a> 
    </div>

    <div class="categoryBox"> 
        <a href="#">
            <span class="categoryLabelText">
                meats
            </span> 
        </a> 
    </div>


    <div class="categoryBox">
        <a href="#">
            <span class="categoryLabelText">
                bakery
            </span> 
        </a> 
    </div>


    <div class="categoryBox">
        <a href="#">
            <span class="categoryLabelText">
                fruit & vegan
            </span> 
        </a> 
    </div>
</div>-->
<!--</div>-->

