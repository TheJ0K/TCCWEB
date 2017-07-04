<%-- 
    Document   : MainDeveloper
    Created on : 22/06/2017, 08:51:50
    Author     : Diogo Fistarol
--%>
<%@page import="Model.IdeaCompany"%>
<%@page import="Model.IdeaDeveloper"%>

<%@page import="Model.Company"%>
<%@page import="Model.Developer"%>

<%@page import="DAL.DAL" %>

<%@page import="java.util.List" %>

<%@page import="servlet.LoginDeveloper"%>

<%@page import="servlet.IdeaDev"%>
<%@page import="servlet.IdeaComp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

                            <li><a class="glyphicon glyphicon-log-out" href="index.jsp"> Logout</a></li>
                            <li role="separator" class="divider"></li>

                        </ul>
                    </div>

                </div><!--3-->
            </div><!--1-->
        </nav>

        <div class="container col-md-12 body-back-color1"><!--CAROUSEL-->
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="./images/carousel1.jpg" alt="Idea - carousel1" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>DISCLOSURE</h3> <!--DIVULGUE-->
                            <p>Drop your ideas, share!</p><!--Solte suas ideias, compartilhe!-->
                        </div>
                    </div>

                    <div class="item">
                        <img src="./images/carousel2.jpg" alt="Idea - carousel2" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>DIFFERENTIATE</h3><!--DIFERENCIE-->
                            <p>Be different, innovate your work!</p><!--Seja diferente, inove seu trabalho!-->
                        </div>
                    </div>

                    <div class="item">
                        <img src="./images/carousel3.jpg" alt="Idea - carousel3" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>INNOVATE</h3><!--INOVAR-->
                            <p>Innovate in your work, think differently!</p><!--Inove em seu trabalho, pense diferente!-->
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div> <br>
        </div>
        <div>
            <center>
                <span style="color: white;">WELLCOME: ${phy.name} ${phy.lastName}</span>
            </center>
        </div><br>

        <div>    <!-- NEW -->
            <center><!--INFORMATIONS-->
                <div class="col-md-12 well" style="border-radius: 0;"><!--NEW IDEAS AREA-->
                    <div class="col-md-4"></div>
                    <span class="col-md-4 text-title-text" style="background-color: #0A0A0A;"> IDEAS </span>
                </div>
            </center>
        </div>

        <div class="col-md-1"></div><!--COL SEPARATION-->

        <!-- NEW -->
    <center><!--TITLES-->
        <div class="col-md-5 text-title" style="color: white;">Ideas Devolopers</div>
        <div class="col-md-5 text-title" style="color: white;">Ideas Company</div>
    </center>

    <div class="col-md-1"></div><!--COL SEPARATION-->
    <div class="col-md-12"></div><!--COL SEPARATION-->
    <div class="col-md-1"></div><!--COL SEPARATION-->

    <!-- NEWs -->
    <div>
        <form><!--FORM NEWS IDEA-->

            <div class="col-md-5 well" style="border-color: transparent;"><!--NEWS AREA DEVOLOPER 'BLACK'-->    
                <%
                    DAL dal = new DAL();
                    List<IdeaDeveloper> ideasd = dal.getList("IdeaDeveloper");
                    for (IdeaDeveloper idea : ideasd) {
                %>

                <div class="well col-md-12 glyphicon glyphicon-star-empty" style="background: #0A0A0A; color: white;"> New Devoloper Idea! </div>


                <div class="well col-md-12" style="background-color: #0A0A0A;"><!--IMAGES AREA-->
                    <center>
                        <a href=""><img src="<%out.println(idea.getImageDeveloperIdea());%>" class="img-rounded" alt="Idea - carousel3" style="width:100%;"></a>
                    </center>
                    <div class="col-md-6">
                        <div class="text-body-area" style="color: white;">Name:<span> <%out.print(idea.getDeveloper().getPhysicalPerson().getName());%> </span></div><br><!--DEVOLOPER NAME-->
                        <div class="text-body-area" style="color: white;">Lastname: <span> <%out.print(idea.getDeveloper().getPhysicalPerson().getLastName());%> </span></div><br>
                        <div class="text-body-area" style="color: white;">Age: <span> <%out.print(idea.getDeveloper().getAge());%> </span></div><br>
                        <div class="text-body-area" style="color: white;">Email: <span> <%out.print(idea.getDeveloper().getPhysicalPerson().getEmail());%> </span></div><br>
                    </div>
                    <div class="col-md-6">
                        <div class="text-body-area" style="color: white;">Landline Phone:<span> <%out.print(idea.getDeveloper().getPhysicalPerson().getPhone().getLandLine());%> </span></div><br><!--DEVOLOPER NAME-->
                        <div class="text-body-area" style="color: white;">Mobile Phone: <span> <%out.print(idea.getDeveloper().getPhysicalPerson().getPhone().getMobile());%> </span></div><br>
                    </div>
                </div>

                <div class="col-md-12"><!--TITLE AREA-->
                    <center>
                        <h1 class="text-title-area" style="color: #0A0A0A;"><%out.println(idea.getTitleDeveloperIdea());%></h1>
                    </center>
                </div>

                <div><!--TEXT DESCRIPTION AREA-->

                    <div class="col-md-12 well" style="background-color: #0A0A0A; color: white;">DESCRIPTION:
                        <textarea class="form-control" style="height: 200px;" rows="3" disabled="disabled"><% out.print(idea.getDescriptionDeveloperIdea());%> </textarea>
                    </div>

                </div>
                <br>
                <%
                    }
                %>        

            </div>
        </form>


        <!-- NEWs -->
        <form action="IdeaCompany" method="SET"><!--FORM NEWS IDEA-->
            <div class="col-md-5 well" style="border-color: transparent;"><!--NEWS AREA COMPANY BLACK--> 
                <%
                    List<IdeaCompany> ideasc = dal.getList("IdeaCompany");
                    for (IdeaCompany idea : ideasc) {
                %>

                <div class="well col-md-12 glyphicon glyphicon-star-empty" style="background: #0A0A0A; color: white;"> New Company Idea! </div>

                <div class="well col-md-12" style="background-color: #0A0A0A;"><!--IMAGES AREA-->
                    <center>
                        <a href=""><img src="<% out.print(idea.getImageCompanyIdea()); %>" class="img-rounded" alt="Idea - carousel3" style="width:100%;"></a>
                    </center>
                    <div class="col-md-6">
                        <div class="text-body-area" style="color: white;">Name:<span> <%out.print(idea.getCompany().getLegalPerson().getName());%> </span></div><br><!--DEVOLOPER NAME-->
                        <div class="text-body-area" style="color: white;">Lastname: <span> <%out.print(idea.getCompany().getLegalPerson().getLastName());%> </span></div><br>
                        <div class="text-body-area" style="color: white;">Company: <span> <%out.print(idea.getCompany().getNameCompany());%> </span></div><br>
                        <div class="text-body-area" style="color: white;">Email: <span> <%out.print(idea.getCompany().getLegalPerson().getEmail());%> </span></div><br>
                    </div>
                    <div class="col-md-6">
                        <div class="text-body-area" style="color: white;">Landline Phone:<span> <%out.print(idea.getCompany().getLegalPerson().getPhone().getLandLine());%> </span></div><br><!--DEVOLOPER NAME-->
                        <div class="text-body-area" style="color: white;">Mobile Phone: <span> <%out.print(idea.getCompany().getLegalPerson().getPhone().getMobile());%> </span></div><br>
                    </div>
                </div>
                <div class="col-md-12"><!--TITLE AREA-->
                    <center><h1 class="text-title-area" style="color: #0A0A0A;"><% out.print(idea.getTitleCompanyIdea()); %></h1></center>
                </div>
                <div><!--TEXT DESCRIPTION AREA-->
                    <div class="col-md-12 well sidebar" style="background-color: #0A0A0A; color: white;">DESCRIPTION:
                        <textarea class="form-control" style="height: 200px;" rows="3" disabled="disabled"><% out.print(idea.getDescriptionCompanyIdea()); %></textarea>
                    </div>
                </div>
                <br>
                <%
                    }
                %>

            </div>
        </form>

        <div class="col-md-1"></div><!--COL SEPARATION-->
    </div>
    <div class="col-md-12"></div><!--COL SEPARATION-->

</body>
</html>
