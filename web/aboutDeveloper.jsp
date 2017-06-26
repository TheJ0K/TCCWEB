<%-- 
    Document   : aboutDeveloper
    Created on : 25/06/2017, 11:22:12
    Author     : Diogo Fistarol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About - Drop Idea</title>
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
                    <a class="navbar-brand" href="mainDeveloper.jsp">HOME</a>
                </div><!--2-->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><!--3-->

                    <ul class="nav navbar-nav"><!--MORE FUNCTIONS-->
                        <li class=""><a href="mainDeveloper.jsp">NEWS</a></li>
                        <li class="active"><a href="aboutDeveloper.jsp"> ABOUT</a></li>

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

        <div class="carousel-inner"><!--IMAGE-->
            <div class="item active">
                <img src="./images/business3.jpg" alt="business3" style="width:100%;">
            </div>          
        </div>

        <div class="col-md-1"></div>
        <div class="col-md-5">
            <center>
                <div class="page-header-1415 text-title-text">Drop Idea?</div>
                <div class="text-body" style="width: 100%; text-align: justify;">
                    Diante das diversas adversidades encontradas, tanto pelas pequenas empresas, quanto pelos iniciantes na carreira de desenvolvimento, sendo estas adversidades, para as empresas o difícil objetivo de levar seus negócios a um próximo nível, estabelecendo um site para divulgar ou vender seus produtos. Para os desenvolvedores existe a trabalhosa tarefa de demonstrar seus trabalhos, projetos, ideias e talentos, assim ingressando na área  da melhor forma possível.
                    O projeto criado busca ligar de maneira mais fácil as pequenas empresas aos desenvolvedores, disponibilizando uma plataforma de divulgação de ideias e necessidades para empresas, enquanto que para os desenvolvedores a ferramenta auxilia na procura por projetos e, acima de tudo, a procura por membros para formação de grupos de desenvolvimento.
                </div>
                <div class="page-header-1415"></div>
            </center>
        </div>

        <div class="col-md-5">
            <center>
                <div class="page-header-1415 text-title-text">Objetivo</div>
                <div class="text-body" style="width: 100%; text-align: justify;">
                    O projeto criado busca ligar de maneira fácil as pequenas empresas aos desenvolvedores, disponibilizando uma plataforma de divulgação de ideias e necessidades para empresas, enquanto que para os desenvolvedores a ferramenta auxilia na procura por projetos e, acima de tudo, a procura por membros para formação de grupos de desenvolvimento.
                    <div class="page-header-1415"></div>
                </div>
            </center>
        </div>
    </body>
</html>
