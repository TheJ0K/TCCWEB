<%-- 
    Document   : ideaDeveloperD
    Created on : 25/06/2017, 11:35:02
    Author     : Diogo Fistarol
--%>
<%@page import="Model.IdeaDeveloper"%>
<%@page import="servlet.IdeaDev"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Developer Idea - Drop Idea</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" type="text/js" href="bootstrap/js/bootstrap.js">

        <link rel="stylesheet" type="text/css" href="style.css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    </head>
    <body class="body-back-color1">
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
                        <li class=""><a href="mainDeveloper.jsp">NEWS</a></li>
                        <li><a href="aboutDeveloper.jsp"> ABOUT</a></li>

                        <li class="dropdown active">
                            <a id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                IDEAS
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li role="separator" class="divider"></li>
                                <li><a class="glyphicon glyphicon-briefcase" href="ideaCompanyD.jsp"> Companys</a></li>
                                <li role="separator" class="divider"></li>

                                <li class="active"><a class="glyphicon glyphicon-list-alt" href="ideaDeveloperD.jsp"> Developers</a></li>
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

        <div class="carousel-inner"><!--IMAGE-->
            <div class="item active">
                <img src="./images/business3.jpg" alt="business3" style="width:100%;">
            </div>          
        </div>
        <div>
            <center><!--INFORMATIONS-->
                <div class="col-md-12 well"><!--NEW IDEAS AREA-->
                    <div class="col-md-4"></div>
                    <span class="col-md-4 text-title-text"> DEVELOPER IDEAS </span>
                </div>
            </center>
        </div>
        <div class="col-md-3"></div><!--COL SEPARATION-->

        <form action="IdeaDevoloper" method="SET"><!--FORM NEWS IDEA-->
            <div class="col-md-6 well" style="border-color: #202020;"><!--NEWS AREA DEVOLOPER 'BLACK'-->    
                <%
                    IdeaDev cria = new IdeaDev();
                    for (IdeaDeveloper post : cria.getIdeaDevelopers()) {
                %>

                <div class="well col-md-12 glyphicon glyphicon-star-empty" style="background: #202020; color: white;"> New Devoloper Idea! </div>


                <div class="well col-md-12" style="background-color: #202020;"><!--IMAGES AREA-->
                    <a href=""><img src="<% out.print(post.getImageDeveloperIdea()); %>" class="img-rounded" alt="Idea - carousel3" style="width:100%;"></a>
                    <div class="text-body-area" style="color: white;">Developer:<span>  </span></div><br><!--DEVOLOPER NAME-->
                    <div class="text-body-area" style="color: white;">Stars: <span> </span></div><br>
                    <div class="text-body-area" style="color: white;">Likes: <span> </span></div><br>
                    <div class="text-body-area" style="color: white;">NotLikes: <span> </span></div><br>

                </div>

                <div class="col-md-12"><!--TITLE AREA-->
                    <center>
                        <h1 class="text-title-area" style="color: #202020;"><% out.print(post.getTitleDeveloperIdea()); %></h1>
                    </center>
                </div>

                <div><!--TEXT DESCRIPTION AREA-->

                    <div class="col-md-12 well" style="background-color: #202020; color: white;">DESCRIPTION:
                        <textarea class="form-control" style="height: 200px;" rows="3" disabled="disabled"> <% out.print(post.getDescriptionDeveloperIdea()); %> </textarea>
                    </div>

                </div>



                <div class="page-header-black"><!--BUTTONS-->
                    <center>
                        <button type="submit" class="btn btn-success glyphicon glyphicon-thumbs-up" name="submitUp"></button>
                        <button type="submit" class="btn btn-danger glyphicon glyphicon-thumbs-down" name="submitDown"></button>
                        <button type="submit" class="btn btn-warning glyphicon glyphicon-star-empty" name="submitStar"></button>
                    </center>
                </div><br>
                <%
                    }
                %>        

            </div>
        </form>
    </body>
</html>
