<%-- 
    Document   : login
    Created on : 29 Oct, 2020, 9:57:59 PM
    Author     : yasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-5 col-lg-5 col-md-8 col-sm-10" style="z-index: 99">
                    <form action="/pooBabySitting/AuthUserServlet" method="POST" class="needs-validation" novalidate>
                        <input type="hidden" name="userType" value="Customer">
                        <div id="svg_wrap"></div>
                        <div class="text-center text-muted">
                            <h2>Sign up Here</h2>
                        </div>
                        <section>
                            <p class="h5">Personal information</p>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-6">
                                        <input type="text" id="fn" name="fn" class="form-control bg-light border-0 rounded" placeholder="Firstname" value="" required/>
                                    </div>
                                    <div class="col-6">
                                        <input type="text" name="sn" class="form-control bg-light border-0 rounded"  placeholder="Surname"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-6">
                                        <input type="text"  name="age" class="form-control bg-light border-0 rounded" placeholder="Age" value="" required/>
                                    </div>
                                    <div class="col-6">
                                        <select name="gender" class="form-control-sm w-100 border-0" style="background: #f8f9fa;" required>
                                            <option value="">Select..</option>
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                        </select>
                                        <!--<input type="text" name="gender" class="form-control bg-light border-0 rounded"  placeholder="Gender" value="Male"/>-->
                                    </div>
                                </div>
                            </div>
<!--                            <div class="form-group">
                                <input type="text" name="noofkids" class="form-control bg-light border-0 rounded"  placeholder="No. of Kids in care" value="" required/>
                            </div>-->
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text border-0">+</span>
                                    </div>
                                    <input type="text" name="code" aria-label="022" class="form-control bg-light border-0" style="max-width:70px" placeholder="Code">
                                    <input type="text" name="number" aria-label="Contact Number" class="form-control bg-light border-0" placeholder="Contact Number" minlength="5" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" name="email" class="form-control bg-light border-0 rounded"  placeholder="Email Address" required/>
                            </div>
                            
                            <div class="form-group">
                                <div class="row no-gutter">
                                    <div class="col-6">
                                        <input type="password" name="pa2" class="form-control bg-light border-0 rounded"  placeholder="Enter Password" aria-describedby="passwordHelpBlock" minlength="8" maxlength="20" required/>
                                    </div>
                                    <div class="col-6">
                                        <input type="password" name="pa" class="form-control bg-light border-0 rounded"  placeholder="Re-Enter Password" minlength="8" maxlength="20" required/>
                                    </div>
                                </div>
                                <small id="passwordHelpBlock" class="form-text text-muted">
                                    Your password must be 8-20 characters and must not contain special characters.
                                </small>
                            </div>
                        </section>

                        <section>
                            <p class="h5">Address</p>
                            <div class="form-group">
                                <textarea name="address" class="form-control bg-light border-0 rounded" placeholder="Building name flat no. floor no." required></textarea>
                            </div>
                            <div class="form-group">
                                <input name="road" type="text" class="form-control bg-light border-0 rounded"  placeholder=""/>
                            </div>
                            <div class="form-group">
                                <input name="landmark" type="text" class="form-control bg-light border-0 rounded"  placeholder=""/>
                            </div>
                            <div class="form-group">
                                <div class="row no-gutter">
                                    <div class="col-6">
                                        <input type="text" name="countrycode" class="form-control bg-light border-0 rounded"  placeholder="State, Country"/>
                                    </div>
                                    <div class="col-6">
                                        <input type="text" name="pin" class="form-control bg-light border-0 rounded" placeholder="Pin Code" value="" required/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" name="direction" class="form-control bg-light border-0 rounded"  placeholder=""/>
                            </div>
                        </section>

                        <div class="text-center">
                            <div class="button btn btn-lg btn-info shadow" id="prev">&larr; Previous</div>
                            <div class="button btn btn-lg btn-info shadow" id="next">Next &rarr;</div>
                         <a href="index.jsp"><button type="submit" >
                                Submit</a>

                        </div>
                    </form>
                </div>
<!--                <div class="fixed-bottom" style="
                     background: antiquewhite;
                     height: 50%;
                     z-index: 1;
                     ">
                    <img src="/pooBabySitting/resources/images/bottomPattern3.svg" class="image-responsive" style="
                         z-index: -1;
                         ">
                </div>-->
            </div>
        </div>
        <script src="/pooBabySitting/resources/js/register.js" type="text/javascript"></script>
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
                                Swal.fire({
                                    title: 'Error!',
                                    text: 'Fill the required fields',
                                    icon: 'error',
                                    confirmButtonText: 'Okay'
                                });
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>
    </body>