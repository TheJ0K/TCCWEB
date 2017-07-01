<%-- 
    Document   : main
    Created on : 14/06/2017, 15:26:28
    Author     : Diogo Fistarol
--%>

<%@page import="Model.IdeaCompany"%>
<%@page import="Model.IdeaDeveloper"%>

<%@page import="Model.Company"%>
<%@page import="Model.Developer"%>

<%@page import="servlet.LoginCompany"%>

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

        <%@include file="menu.jsp" %>

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
                <span style="color: white;">WELLCOME: ${leg.name} ${leg.lastName}</span>
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

        <div>   <!-- NEW -->
            <center><!--TITLES-->
                <div class="col-md-5 text-title" style="color: white;">Ideas Devolopers</div>
                <div class="col-md-5 text-title" style="color: white;">Ideas Company</div>
            </center>
        </div>

        <div class="col-md-1"></div><!--COL SEPARATION-->
        <div class="col-md-12"></div><!--COL SEPARATION-->
        <div class="col-md-1"></div><!--COL SEPARATION-->

        <!-- NEWs -->
        <div>
            <form action="IdeaDevoloper" method="SET"><!--FORM NEWS IDEA-->

                <div class="col-md-5 well" style="border-color: transparent;"><!--NEWS AREA DEVOLOPER 'BLACK'-->    
                    <%
                        IdeaDev cria = new IdeaDev();
                        for (IdeaDeveloper post : cria.getIdeaDevelopers()) {
                    %>

                    <div class="well col-md-12 glyphicon glyphicon-star-empty" style="background: #0A0A0A; color: white;"> New Devoloper Idea! </div>

                    <div class="well col-md-12" style="background-color: #0A0A0A;"><!--IMAGES AREA-->
                        <center>
                            <a href=""><img src="" class="img-rounded" alt="Idea - carousel3" style="width:100%;"></a>
                        </center>
                        <div class="text-body-area" style="color: white;">Developer:<span>  </span></div><br><!--DEVOLOPER NAME-->
                        <div class="text-body-area" style="color: white;">Stars: <span> </span></div><br>
                        <div class="text-body-area" style="color: white;">Likes: <span> </span></div><br>
                        <div class="text-body-area" style="color: white;">NotLikes: <span> </span></div><br>

                    </div>

                    <div class="col-md-12"><!--TITLE AREA-->
                        <center>
                            <h1 class="text-title-area" style="color: #0A0A0A;"><% out.print(post.getTitleDeveloperIdea()); %></h1>
                        </center>
                    </div>

                    <div><!--TEXT DESCRIPTION AREA-->

                        <div class="col-md-12 well" style="background-color: #0A0A0A; color: white;">DESCRIPTION:
                            <textarea class="form-control" style="height: 200px;" rows="3" disabled="disabled"> <% out.print(post.getDescriptionDeveloperIdea()); %> </textarea>
                        </div>

                    </div>

                    <div class="page-header-black"></div><br>
                    <%
                        }
                    %>        

                </div>
            </form>


            <!-- NEWs -->
            <form action="IdeaCompany" method="SET"><!--FORM NEWS IDEA-->
                <div class="col-md-5 well" style="border-color: transparent;"><!--NEWS AREA COMPANY BLACK--> 
                    <%
                        IdeaComp create = new IdeaComp();
                        for (IdeaCompany post : create.getIdeaCompanys()) {
                    %>    

                    <div class="well col-md-12 glyphicon glyphicon-star-empty" style="background: #0A0A0A; color: white;"> New Company Idea! </div>

                    <div class="well col-md-12" style="background-color: #0A0A0A;"><!--IMAGES AREA-->
                        <center>
                            <a href=""><img src="<% out.print(post.getImageCompanyIdea()); %>" class="img-rounded" alt="Idea - carousel3" style="width:100%;"></a>
                        </center>
                        <div class="text-body-area" style="color: white;">Company: <span> ${company.nameCompany} </span></div><br><!--COMPANY NAME-->
                        <div class="text-body-area" style="color: white;">Stars: <span>  </span></div><br>
                        <div class="text-body-area" style="color: white;">Likes: <span>  </span></div><br>
                        <div class="text-body-area" style="color: white;">NotLikes: <span>  </span></div><br>
                    </div>

                    <div class="col-md-12"><!--TITLE AREA-->
                        <center><h1 class="text-title-area" style="color: #0A0A0A;"><% out.print(post.getTitleCompanyIdea()); %></h1></center>
                    </div>

                    <div><!--TEXT DESCRIPTION AREA-->

                        <div class="col-md-12 well sidebar" style="background-color: #0A0A0A; color: white;">DESCRIPTION:
                            <textarea class="form-control" style="height: 200px;" rows="3" disabled="disabled"><% out.print(post.getDescriptionCompanyIdea()); %></textarea>
                        </div>
                    </div>

                    <div class="page-header-black"></div><br>
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
