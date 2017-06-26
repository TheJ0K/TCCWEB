<%-- 
    Document   : index
    Created on : 13/06/2017, 13:17:22
    Author     : Diogo Fistarol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Drop Idea</title>
        <meta charset="UTF-8"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="./images/icon.png" rel="shortcut icon">
        
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top navbar-transparent">
            <div class="container-fluid"><!--1-->

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
        
        <div class="carousel-inner"><!--IMAGE-->
            <div class="item active">
                <img src="./images/business3.jpg" alt="business3" style="width:100%;">
                <div class="carousel-caption2 text-title-form">
                    <h3 class="text-title">DROP IDEA</h3>
                </div>
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
