<%-- 
    Document   : configurationsComp
    Created on : 22/06/2017, 08:52:25
    Author     : Diogo Fistarol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Company"%>

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
                    <a class="navbar-brand" href="mainCompany.jsp">HOME</a>
                </div><!--2-->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><!--3-->

                    <ul class="nav navbar-nav"><!--MORE FUNCTIONS-->
                        <li class="active"><a href="mainCompany.jsp">NEWS</a></li>
                        <li><a href="aboutCompany.jsp"> ABOUT</a></li>

                        <li class="dropdown">
                            <a id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                IDEAS
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li role="separator" class="divider"></li>
                                <li><a class="glyphicon glyphicon-briefcase" href="ideaCompanyC.jsp"> Companys</a></li>
                                <li role="separator" class="divider"></li>

                                <li><a class="glyphicon glyphicon-list-alt" href="ideaDeveloperC.jsp"> Developers</a></li>
                                <li role="separator" class="divider"></li>

                                <li><a class="glyphicon glyphicon-star" href="myIdeasC.jsp"> MyIdeas</a></li>
                                <li role="separator" class="divider"></li>
                            </ul>
                        </li>
                    </ul>

                    <div class="navbar-right"><!--CONFIGURATIONS-->
                        <a class="navbar-brand glyphicon glyphicon-user btn btn-link" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li role="separator" class="divider"></li>

                            <li><a class="glyphicon glyphicon-info-sign" href="helpCompany.jsp"> Help</a></li>
                            <li role="separator" class="divider"></li>

                            <li><a class="glyphicon glyphicon-cog" href="configurationsComp.jsp"> Configuration</a></li>
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
                    <form action="ChangeCompany" method="GET">
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
                                <label for="inputImageC1">Face Image</label>
                                <input type="file" class="form-control" placeholder="" name="imageFChangeC">
                            </div>
                        </div>

                        <div><!--NEW IMAGE-->
                            <div class="col-md-12 form-group"><!--C = CREATE or COMPANY-->
                                <label for="inputImageC2">Cover Image</label>
                                <input type="file" class="form-control" placeholder="" name="imageCChangeC">
                            </div>
                        </div>

                        <div><!--COMPANY-->
                            <div class="col-md-6 form-group ">
                                <label for="inputNameC">New Name</label>
                                <input type="text" class="form-control" value="${leg.name}" name="nameChangeC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputLastnameC">New Lastname</label>
                                <input type="text" class="form-control" value="${leg.lastName}" name="lastnameChangeC">
                            </div>
                        </div>

                        <div><!--COMPANY-->
                            <div class="col-md-6 form-group">
                                <label for="inputNameCompanyC">Name Company</label>
                                <input type="text" class="form-control" value="${leg.nameCompany}" name="nameCompanyChangeC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputCnpjC">CNPJ</label>
                                <input type="number" class="form-control" value="${leg.cnpj}" name="cnpjChangeC">
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
                                <input type="text" class="form-control" value="${leg.nameState}" name="stateChangeC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputCityC">New City</label>
                                <input type="text" class="form-control" value="${leg.nameCity}" name="cityChangeC">
                            </div>
                        </div>

                        <div><!--PHONE-->
                            <div class="col-md-6 form-group">
                                <label for="inputLandlineC">New Landline</label>
                                <input type="number" class="form-control" value="${leg.landLine}" name="landlineChangeC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputMobileC">New Mobile</label>
                                <input type="number" class="form-control" value="${leg.mobile}" name="mobileChangeC">
                            </div>
                        </div>
                        
                        <div><!--TEXT DESCRIPTION AREA-->
                            <div class="col-md-12 form-group">
                                <label for="inputTitle">Description</label>
                                <textarea class="form-control" name="descriptionRegisterD" style="height: 200px;"> </textarea>
                            </div>
                        </div>

                        <div class="col-md-12 page-header-1415"></div>

                        <div><!--PASSWORD'S-->
                            <div class="col-md-6 form-group">
                                <label for="inputPasswordC">Your Password</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordC">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputConfirmPasswordC">Password Confirm</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordConfirmC">
                            </div>
                        </div><br>
                        

                        <div><!--BUTTON-->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Change</button>
                        </div>	

                    </form>
                </div>

                <div class="tab-pane fade" id="delete">
                    <form action="DeleteCompany" method="GET">
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
                                <input type="email" class="form-control" value="${leg.email}" name="emailPDFC">
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
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                        </div>	

                    </form>
                </div>
                
                <div class="tab-pane fade" id="pdf">
                    <form action="PDFCompany" method="GET">
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
                                <input type="email" class="form-control" value="${leg.email}" name="emailPDFC">
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
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                        </div>	

                    </form>
                </div>
                
            </div>

        </div>
    </body>
</html>
