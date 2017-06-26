<%-- 
    Document   : login
    Created on : 13/06/2017, 13:53:41
    Author     : Diogo Fistarol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login - Drop Idea</title>
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
        <div class="col-md-5 well" style="margin-top: 100px; opacity: 0.9">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#login" data-toggle="tab">Login Developer</a></li>
                <li><a href="#create" data-toggle="tab">Login Company</a></li>
            </ul>

            <div id="myTabContent" class="tab-content">
                <div class="tab-pane active in" id="login">
                    <form action="LoginDeveloper" method="GET">
                        <center>
                            <div class="page-header-1415 text-title" style="margin-top: 5px;">LOGIN | <small>Developer</small> <span class="glyphicon glyphicon-pencil" aria-hidden="true" style="float: right;"></span></div>
                        </center>
                        <div class="alert alert-info alert-dismissable fade in">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Info!</strong> Complete all fields to log.
                        </div>
                        <div class="form-group">
                            <label for="inputEmail">Email address</label>
                            <input required="" type="text" class="form-control" placeholder="exemple@email.com" name="emailLogin">
                        </div> <br>
                        <div class="form-group">
                            <label for="inputPassword">Password</label>
                            <input required="" type="password" class="form-control" placeholder="••••••••••" name="passwordLogin">
                        </div> <br>

                        <div style="color: darkred; font-family: Charter BT; font-size: 20px; float: right;">
                            <%
                                try {
                                    String msg = request.getAttribute("mensagem").toString();
                                    if (msg != null) {
                                        out.print("<p>" + msg + "</p>");
                                    }
                                } catch (Exception e) {

                                }
                            %>
                        </div>
                        <button type="submit" class="btn btn-primary btn-lg btn-block active" name="submitLogin">Submit</button>
                        <div class="page-header-1415"> </div>
                        ${message}
                    </form>
                </div>

                <div class="tab-pane fade" id="create">
                    <form action="LoginCompany" method="GET">
                        <center>
                            <div class="page-header-1415 text-title" style="margin-top: 5px;">LOGIN | <small>Company</small> <span class="glyphicon glyphicon-pencil" aria-hidden="true" style="float: right;"></span></div>
                        </center>
                        <div class="alert alert-info alert-dismissable fade in">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Info!</strong> Complete all fields to log.
                        </div>

                        <div class="form-group">
                            <label for="inputEmail">Email address</label>
                            <input required="" type="text" class="form-control" placeholder="exemple@email.com" name="emailLogin">
                        </div> <br>
                        <div class="form-group">
                            <label for="inputPassword">Password</label>
                            <input required="" type="password" class="form-control" placeholder="••••••••••" name="passwordLogin">
                        </div> <br>

                        <div style="color: darkred; font-family: Charter BT; font-size: 20px; float: right;">
                            <%
                                try {
                                    String msg = request.getAttribute("mensagem").toString();
                                    if (msg != null) {
                                        out.print("<p>" + msg + "</p>");
                                    }
                                } catch (Exception e) {

                                }
                            %>
                        </div>
                        <button type="submit" class="btn btn-primary btn-lg btn-block active" name="submitLogin">Submit</button>
                        <div class="page-header-1415"> </div>
                        ${message}
                    </form>
                </div>
            </div>

        </div>

    </body>
</html>
