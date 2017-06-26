<%-- 
    Document   : help
    Created on : 22/06/2017, 09:42:46
    Author     : Diogo Fistarol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Help - Drop Idea</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">        

        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" type="text/js" href="bootstrap/js/bootstrap.js">

        <link rel="stylesheet" type="text/css" href="style.css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
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
                        <li class=""><a href="mainCompany.jsp">NEWS</a></li>
                        <li class=""><a href="aboutCompany.jsp"> ABOUT</a></li>

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

                            <li class="active"><a class="glyphicon glyphicon-info-sign" href="helpCompany.jsp"> Help</a></li>
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

        <div class="carousel-inner"><!--IMAGE-->
            <div class="item active">
                <img src="./images/business3.jpg" alt="business3" style="width:100%;">
            </div>          
        </div>

        <div class="col-md-4">
            <center>
                <div class="page-header-1415 text-title-text" style="background-color: #0A0A0A;">Project</div>
                <div class="text-body well" style="width: 100%; text-align: justify;">
                    <center>
                        <a href=""><img src="./images/001-github-sign.png" alt="github" style="width:255px; height:255px;"></a>
                            <div class="page-header-1415">
                            <span>GitHub</span>
                        </div>
                    </center>

                </div>
            </center>
        </div>

        <div class="col-md-4">
            <center>
                <div class="page-header-1415 text-title-text" style="background-color: #0A0A0A;">Contact</div>
                <div class="text-body well" style="width: 100%; text-align: justify;">
                    <center>
                        <a href=""><img src="./images/005-facebook.png" alt="facebook" style="width:255px; height:255px;"></a>

                        <div class="page-header-1415">
                            <span>Facebook</span>
                        </div>
                    </center>

                </div>
            </center>
        </div>

        <div class="col-md-4">
            <center>
                <div class="page-header-1415 text-title-text" style="background-color: #0A0A0A;">More</div>
                <div class="text-body well" style="width: 100%; text-align: justify;">
                    <center>
                        <a href=""><img src="./images/002-youtube.png" alt="youtube" style="width:255px; height:255px;"></a>
                        <div class="page-header-1415">
                            <span>Youtube</span>
                        </div>
                    </center>

                </div>
            </center>
        </div>
    </body>
</html>
