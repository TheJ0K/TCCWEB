<%-- 
    Document   : myIdeas
    Created on : 25/06/2017, 14:04:51
    Author     : Diogo Fistarol
--%>
<%@page import="Model.IdeaCompany"%>
<%@page import="servlet.IdeaComp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Ideas - Drop Idea</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" type="text/js" href="bootstrap/js/bootstrap.js">

        <link rel="stylesheet" type="text/css" href="style.css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
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
                    <a class="navbar-brand" href="mainCompany.jsp">HOME</a>
                </div><!--2-->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><!--3-->

                    <ul class="nav navbar-nav"><!--MORE FUNCTIONS-->
                        <li class=""><a href="mainCompany.jsp">NEWS</a></li>
                        <li><a href="aboutCompany.jsp"> ABOUT</a></li>

                        <li class="dropdown active">
                            <a id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                IDEAS
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li role="separator" class="divider"></li>
                                <li class=""><a class="glyphicon glyphicon-briefcase" href="ideaCompanyC.jsp"> Companys</a></li>
                                <li role="separator" class="divider"></li>

                                <li><a class="glyphicon glyphicon-list-alt" href="ideaDeveloperC.jsp"> Developers</a></li>
                                <li role="separator" class="divider"></li>

                                <li class="active"><a class="glyphicon glyphicon-star" href="myIdeasC.jsp"> MyIdeas</a></li>
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

        <div class="carousel-inner"><!--IMAGE-->
            <div class="item active">
                <img src="./images/business3.jpg" alt="business3" style="width:100%;">
            </div>          
        </div>

        <div>
            <center><!--INFORMATIONS-->
                <div class="col-md-12 well"><!--NEW IDEAS AREA-->
                    <div class="col-md-4"></div>
                    <span class="col-md-4 text-title-text" style="background-color: #0A0A0A;"> MY IDEAS </span>
                </div>
            </center>
        </div>
        <div>
            <center>
                <div class="col-md-3">
                    <a style="color: black; border-radius: 15px;" class="col-md-11 navbar-brand btn-info glyphicon glyphicon-wrench shadow" href="confIdeaCompany.jsp"> Configure</a>
                </div>
            </center>
        </div>
        <br>

        <div class="col-md-12"></div>

        <div class="col-md-3"></div><!--COL SEPARATION-->

        <form action="IdeaCompany" method="SET"><!--FORM NEWS IDEA-->
            <div class="col-md-6 well" style="border-color: #0A0A0A;"><!--NEWS AREA COMPANY BLACK--> 
                <%
                    IdeaComp create = new IdeaComp();
                    for (IdeaCompany post : create.getIdeaCompanys()) {
                %>    

                <div class="well col-md-12 glyphicon glyphicon-star-empty" style="background: #0A0A0A; color: white;"> New Company Idea! </div>

                <div class="well col-md-12" style="background-color: #0A0A0A;"><!--IMAGES AREA-->
                    <a href=""><img src="<% out.print(post.getImageCompanyIdea()); %>" class="img-rounded" alt="Idea - carousel3" style="width:100%;"></a>
                    <div class="text-body-area" style="color: white;">Company: <span>  </span></div><br><!--COMPANY NAME-->
                    <div class="text-body-area" style="color: white;">Stars: <span> </span></div><br>
                    <div class="text-body-area" style="color: white;">Likes: <span> <% out.print(post.getNumberCompanyStars()); %> </span></div><br>
                    <div class="text-body-area" style="color: white;">NotLikes: <span> <% out.print(post.getNumberCompanyStars()); %> </span></div><br>
                </div>

                <div class="col-md-12"><!--TITLE AREA-->
                    <center><h1 class="text-title-area" style="color: #0A0A0A;"><% out.print(post.getTitleCompanyIdea()); %></h1></center>
                </div>

                <div><!--TEXT DESCRIPTION AREA-->

                    <div class="col-md-12 well sidebar" style="background-color: #0A0A0A; color: white;">DESCRIPTION:
                        <textarea class="form-control" style="height: 200px;" rows="3" disabled="disabled"><% out.print(post.getDescriptionCompanyIdea()); %></textarea>
                    </div>
                </div>

                <div class="col-md-12"></div><!--COL SEPARATION-->

                <div class="page-header-black"><!--BUTTONS-->
                    <center>
                        <button type="submit" class="btn btn-success glyphicon glyphicon-thumbs-up shadow" name="submitUp"></button>
                        <button type="submit" class="btn btn-danger glyphicon glyphicon-thumbs-down shadow" name="submitDown"></button>
                        <button type="submit" class="btn btn-warning glyphicon glyphicon-star-empty shadow" name="submitStar"></button>
                    </center>
                </div><br>
                <%
                    }
                %>  

            </div>
        </form>
    </body>
</html>
