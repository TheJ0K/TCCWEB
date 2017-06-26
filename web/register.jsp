<%-- 
    Document   : register
    Created on : 13/06/2017, 13:53:50
    Author     : Diogo Fistarol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register - Drop Idea</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" type="text/js" href="bootstrap/js/bootstrap.js">

        <link rel="stylesheet" type="text/css" href="style.css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body background="./images/business1.jpg">
        <nav class="navbar navbar-inverse navbar-fixed-top navbar-transparent">
            <div class="container-fluid"><!--1-->
                <!--"LOGO"-->
                <div class="navbar-header"><!--2-->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">HOME</a>
                </div><!--2-->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><!--3-->
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Register</a></li>
                    </ul>
                </div><!--3-->
            </div><!--1-->
        </nav>

        <div class="col-md-1"></div>
        <div class="col-md-5 well" style="margin-top: 90px; opacity: 0.9">

            <ul class="nav nav-tabs">
                <li class="active"><a href="#developer" data-toggle="tab">Create Developer</a></li>
                <li><a href="#company" data-toggle="tab">Create Company</a></li>
            </ul>

            <div id="myTabContent" class="tab-content">
                <div class="tab-pane active in" id="developer">
                    <form action="RegisterDeveloper" method="GET">
                        <center>
                            <div class="page-header-1415 text-title" style="margin-top: 5px;">DEVELOPER | 
                                <small>Your Account</small> 
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true" style="float: right;"></span>
                            </div>
                        </center>
                        <div class="alert alert-info alert-dismissable fade in">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Info!</strong> Complete all fields to register.
                        </div>
                        <div><!--USER-->
                            <div class="col-md-6 form-group ">
                                <label for="inputNameD">Name</label>
                                <input type="text" class="form-control" placeholder="your name..." name="nameRegisterD">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputLastnameD">Lastname</label>
                                <input type="text" class="form-control" placeholder="your lastname..." name="lastnameRegisterD">
                            </div>
                        </div>

                        <div><!--USER+-->
                            <div class="col-md-6 form-group">
                                <label for="inputAgeD">Age</label>
                                <input type="date" class="form-control" placeholder="your age..." name="ageRegisterD">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputCpfD">CPF</label>
                                <input type="number" class="form-control" placeholder="your cpf..." name="cpfRegisterD">
                            </div>
                        </div>

                        <div><!--EMAIL-->
                            <div class="col-md-12 form-group">
                                <label for="inputEmailD">Email</label>
                                <input type="email" class="form-control" placeholder="exemple@email.com" name="emailRegisterD">
                            </div>
                        </div>

                        <div><!--PASSWORD'S-->
                            <div class="col-md-6 form-group">
                                <label for="inputPasswordD">Password</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordRegisterD">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputConfirmPasswordD">Password Confirm</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordConfirmRegisterD">
                            </div>
                        </div>

                        <div><!--STATE-->
                            <div class="col-md-6 form-group">
                                <label for="inputStateD">State</label>
                                <input type="text" class="form-control" placeholder="your state..." name="stateRegisterD">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputCityD">City</label>
                                <input type="text" class="form-control" placeholder="your city..." name="cityRegisterD">
                            </div>
                        </div>

                        <div><!--PHONE-->
                            <div class="col-md-6 form-group">
                                <label for="inputLandlineD">Landline</label>
                                <input type="number" class="form-control" placeholder="your landline phone..." name="landlineRegisterD">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputMobileD">Mobile</label>
                                <input type="number" class="form-control" placeholder="your mobile phone..." name="mobileRegisterD">
                            </div>
                        </div><br>

                        <div><!--BUTTON-->
                            <button type="submit1" class="btn btn-primary btn-lg btn-block">Submit</button>
                        </div>					
                    </form>
                </div>

                <!--CREATE COMPANY AREA-->
                <div class="tab-pane fade" id="company">
                    <form action="RegisterCompany" method="GET">
                        <center>
                            <div class="page-header-1415 text-title" style="margin-top: 5px;">COMPANY | 
                                <small>Your Account</small> 
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true" style="float: right;"></span>
                            </div>
                        </center>
                        
                        <div class="alert alert-info alert-dismissable fade in">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Info!</strong> Complete all fields to register.
                        </div>

                        <div><!--USER-->
                            <div class="col-md-6 form-group">
                                <label for="inputNameC">Name</label>
                                <input type="text" class="form-control" placeholder="your name..." name="nameRegisterC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputLastnameC">Lastname</label>
                                <input type="text" class="form-control" placeholder="your lastname..." name="lastnameRegisterC">
                            </div>
                        </div>

                        <div><!--COMPANY-->
                            <div class="col-md-6 form-group">
                                <label for="inputNameCompanyC">Name Company</label>
                                <input type="text" class="form-control" placeholder="name company..." name="nameCompanyRegisterC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputCnpjC">CNPJ</label>
                                <input type="number" class="form-control" placeholder="cnpj company..." name="cnpjRegisterC">
                            </div>
                        </div>

                        <div><!--EMAIL-->
                            <div class="col-md-12 form-group">
                                <label for="inputEmailC">Email</label>
                                <input type="email" class="form-control" placeholder="exemple@email.com" name="emailRegisterC">
                            </div>
                        </div>

                        <div><!--PASSWORD'S-->
                            <div class="col-md-6 form-group">
                                <label for="inputPasswordC">Password</label>
                                <input type="password" class="form-control" placeholder="••••••••••" name="passwordRegisterC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputConfirmPasswordC">Password Confirm</label>
                                <input type="password" class="form-control" placeholder="••••••••••" name="passwordConfirmRegisterC">
                            </div>
                        </div>

                        <div><!--STATE-->
                            <div class=" col-md-6 form-group">
                                <label for="inputStateC">State</label>
                                <input type="text" class="form-control" placeholder="your state..." name="stateRegisterC">
                            </div>
                            <div class=" col-md-6 form-group">
                                <label for="inputCityC">City</label>
                                <input type="text" class="form-control" placeholder="your city..." name="cityRegisterC">
                            </div>
                        </div>

                        <div><!--PHONE-->
                            <div class="col-md-6 form-group">
                                <label for="inputLandlineC">Landline</label>
                                <input type="number" class="form-control" placeholder="your landline phone..." name="landlineRegisterC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputMobileC">Mobile</label>
                                <input type="number" class="form-control" placeholder="your mobile phone..." name="mobileRegisterC">
                            </div>
                        </div><br>

                        <div><!--BUTTON-->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
