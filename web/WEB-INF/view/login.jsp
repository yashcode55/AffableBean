<%-- 
    Document   : login
    Created on : 29 Oct, 2020, 10:19:47 PM
    Author     : yasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-4 col-lg-5 col-md-8 col-sm-10 m-5 px-5 pt-5 border-0 text-secondary shadow rounded bg-white" style="z-index: 99;">
                    <form action="/pooBabySitting/AuthUserServlet" method="GET" class="needs-validation" novalidate>
                        <div class="form-group">
                            <div class="text-center text-info">
                                <i class="fas fa-baby-carriage fa-5x"></i>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" name="userId" class="form-control bg-light border-0 rounded" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
<!--                            <div class="invalid-feedback">
                                Enter a valid email Id
                            </div>-->
<!--                            <div class="valid-feedback">
                                Looks Good!
                            </div>-->
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="password" class="form-control bg-light border-0 rounded" id="exampleInputPassword1" placeholder="Password" required>
                        </div>
                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Keep me logged In?</label>
                        </div>
                        <a href="index.jsp"><button type="submit" >
                                Submit</a>
                        </button>
                    </form>
                 
<!--                    <div class="text-center px-3 py-1 text-lead h5">
                        Register as<br/>
                        <a href="views/registerCustPage.html" class="btn btn-info"> Parent </a>|
                        <a href="views/registerEmpPage.html" class="btn btn-info"> BabySitter</a>
                    </div>-->
                </div>
<!--                <div class="fixed-bottom" style="
                     background: antiquewhite;
                     height: 50%;
                     z-index: 1;
                     "><img src="resources/images/bottomPattern3.svg" class="image-responsive" style="
                       z-index: -1;
                       ">
                </div>-->
            </div>
        </div>
        <script src="resources/js/login.js" type="text/javascript"></script>
        <script type="text/javascript">
            (function () {
                'use strict';
                
                
                window.addEventListener('load', function () {
                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation');
                    // Loop over them and prevent submission
                    var validation = Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>