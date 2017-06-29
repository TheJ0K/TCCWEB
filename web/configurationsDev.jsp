<%-- 
    Document   : configurations
    Created on : 20/06/2017, 23:56:07
    Author     : Diogo Fistarol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Developer"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - Drop Idea</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" type="text/js" href="bootstrap/js/bootstrap.js">

        <link rel="stylesheet" type="text/css" href="style.css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="background-image: url(./images/business1.jpg); background-attachment: fixed;">
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
                    <a class="navbar-brand" href="mainDeveloper.jsp">HOME</a>
                </div><!--2-->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><!--3-->

                    <ul class="nav navbar-nav"><!--MORE FUNCTIONS-->
                        <li class="active"><a href="mainDeveloper.jsp">NEWS</a></li>
                        <li><a href="aboutDeveloper.jsp"> ABOUT</a></li>

                        <li class="dropdown">
                            <a id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                IDEAS
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li role="separator" class="divider"></li>
                                <li><a class="glyphicon glyphicon-briefcase" href="ideaCompanyD.jsp"> Companys</a></li>
                                <li role="separator" class="divider"></li>

                                <li><a class="glyphicon glyphicon-list-alt" href="ideaDeveloperD.jsp"> Developers</a></li>
                                <li role="separator" class="divider"></li>

                                <li><a class="glyphicon glyphicon-star" href="myIdeasD.jsp"> MyIdeas</a></li>
                                <li role="separator" class="divider"></li>
                            </ul>
                        </li>
                    </ul>

                    <div class="navbar-right"><!--CONFIGURATIONS-->
                        <a class="navbar-brand glyphicon glyphicon-user btn btn-link" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li role="separator" class="divider"></li>

                            <li><a class="glyphicon glyphicon-info-sign" href="helpDeveloper.jsp"> Help</a></li>
                            <li role="separator" class="divider"></li>

                            <li><a class="glyphicon glyphicon-cog" href="configurationsDev.jsp"> Configuration</a></li>
                            <li role="separator" class="divider"></li>

                            <li><a class="glyphicon glyphicon-log-out" href="#"> Logout</a></li>
                            <li role="separator" class="divider"></li>

                        </ul>
                    </div>

                </div><!--3-->
            </div><!--1-->
        </nav>

        <div class="col-md-1"></div>
        <div class="col-md-5 well" style="margin-top: 90px; opacity: 0.9">

            <ul class="nav nav-tabs">
                <li class="active"><a href="#change" data-toggle="tab">Change Account</a></li>
                <li><a href="#delete" data-toggle="tab">Delete Account</a></li>
                <li><a href="#pdf" data-toggle="tab">PDF Account</a></li>
            </ul>

            <div id="myTabContent" class="tab-content">
                <div class="tab-pane active in" id="change">
                    <form action="RegisterDeveloper" method="GET">
                        <center>
                            <div class="page-header-1415 text-title" style="margin-top: 5px;">COMPANY | 
                                <small>Your Account</small> 
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true" style="float: right;"></span>
                            </div>
                        </center>
                        <div class="alert alert-info alert-dismissable fade in">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Info!</strong> Complete all fields to change your data.
                        </div>

                        <div><!--NEW IMAGE-->
                            <div class="col-md-12 form-group"><!--C = CREATE or COMPANY-->
                                <label for="inputImageC">Face Image</label>
                                <input type="file" class="form-control" placeholder="" name="imageChangeC">
                            </div>
                        </div>

                        <div><!--NEW IMAGE-->
                            <div class="col-md-12 form-group"><!--C = CREATE or COMPANY-->
                                <label for="inputImageC">Cover Image</label>
                                <input type="file" class="form-control" placeholder="" name="imageChangeC">
                            </div>
                        </div>

                        <div><!--COMPANY-->
                            <div class="col-md-6 form-group ">
                                <label for="inputNameC">New Name</label>
                                <input type="text" class="form-control" placeholder="your name..." name="nameChangeC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputLastnameC">New Lastname</label>
                                <input type="text" class="form-control" placeholder="your lastname..." name="lastnameChangeC">
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

                        <div>
                            <div class="col-md-6 form-group ">
                                <label for="inputNewPasswordC">New Password</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordConfirmChangeC">
                            </div>
                            <div class="col-md-6 form-group ">
                                <label for="inputConfirmNewPasswordC">Confirm New Password</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordConfirmChangeC">
                            </div>
                        </div>

                        <div><!--STATE-->
                            <div class="col-md-6 form-group">
                                <label for="inputStateC">New State</label>
                                <input type="text" class="form-control" placeholder="your state..." name="stateChangeC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputCityC">New City</label>
                                <input type="text" class="form-control" placeholder="your city..." name="cityChangeC">
                            </div>
                        </div>

                        <div><!--PHONE-->
                            <div class="col-md-6 form-group">
                                <label for="inputLandlineC">New Landline</label>
                                <input type="number" class="form-control" placeholder="your landline phone..." name="landlineChangeC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputMobileC">New Mobile</label>
                                <input type="number" class="form-control" placeholder="your mobile phone..." name="mobileChangeC">
                            </div>
                        </div>

                        <div class="col-md-12 page-header-1415"></div>

                        <div><!--PASSWORD'S-->
                            <div class="col-md-6 form-group">
                                <label for="inputPasswordC">Your Password</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordChangeC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputConfirmPasswordC">Password Confirm</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordConfirmChangeC">
                            </div>
                        </div><br>


                        <div><!--BUTTON-->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Change</button>
                        </div>	

                    </form>
                </div>

            </div>

            <div id="myTabContent" class="tab-content">
                <div class="tab-pane active in" id="pdf">
                    <form action="PDFDeveloper" method="GET">
                        <center>
                            <div class="page-header-1415 text-title" style="margin-top: 5px;">COMPANY | 
                                <small>Delete Your Account</small> 
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true" style="float: right;"></span>
                            </div>
                        </center>
                        <div class="alert alert-info alert-dismissable fade in">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Info!</strong> Complete all fields to create a PDF.
                        </div>

                        <div><!--EMAIL-->
                            <div class="col-md-12 form-group">
                                <label for="inputEmailC">Email</label>
                                <input type="email" class="form-control" placeholder="exemple@email.com" name="emailPDFC">
                            </div>
                        </div>

                        <div class="col-md-12 page-header-1415"></div>

                        <div><!--PASSWORD'S-->
                            <div class="col-md-6 form-group">
                                <label for="inputPasswordC">Your Password</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordPDFC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputConfirmPasswordC">Password Confirm</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordConfirmPDFC">
                            </div>
                        </div><br>

                        <div><!--BUTTON-->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Delete</button>
                        </div>	

                    </form>
                </div>

            </div>
        </div>
    </body>
</html>
