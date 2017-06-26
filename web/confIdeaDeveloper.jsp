<%-- 
    Document   : confIdeaDeveloper
    Created on : 21/06/2017, 00:07:32
    Author     : Diogo Fistarol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

                                <li><a class="glyphicon glyphicon-list-alt" href="ideaDeveloperD.jsp"> Developers</a></li>
                                <li role="separator" class="divider"></li>

                                <li class="active"><a class="glyphicon glyphicon-star" href="confIdeaDeveloper.jsp"> MyIdeas</a></li>
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

        <div class="col-md-1"></div><!--COL SEPARATION-->
        <div class="col-md-5 well" style="margin-top: 90px; opacity: 0.9"><!--MAIN FORM-->

            <ul class="nav nav-tabs">
                <li class="active"><a href="#create" data-toggle="tab">Create Idea</a></li><!--OPTION 1-->
                <li><a href="#changes" data-toggle="tab">Changes Idea</a></li><!--OPTION 2-->
                <li><a href="#delete" data-toggle="tab">Delete Idea</a></li><!--OPTION 2-->
            </ul>

            <div id="myTabContent" class="tab-content">
                <div class="tab-pane active in" id="create"><!--ID OF CREATE, OPTION 1-->
                    <form action="ideaDevCreate" method="GET"><!--FORM FOR SERVELET-->

                        <center><!--FIELD FOR TITLE END DESCRIPTION-->
                            <div class="page-header-1415 text-title" style="margin-top: 5px;">DEVELOPER | 
                                <small>Create New Idea</small>
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true" style="float: right;"></span>
                            </div>
                        </center>


                        <div class="alert alert-info alert-dismissable fade in"><!--ALERT FOR INFORMATION-->
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Info!</strong> Complete all fields to create a new idea.
                        </div>

                        <div><!--NEW IMAGE-->
                            <div class="col-md-12 form-group"><!--C = CREATE end D = DEVELOPER-->
                                <label for="inputImageD">Image of Idea</label>
                                <input type="file" class="form-control" placeholder="" name="imageCreateD">
                            </div>
                        </div>

                        <div><!--NEW TITLE-->
                            <div class="col-md-12 form-group"><!--C = CREATE end D = DEVELOPER-->
                                <label for="inputTitleD1">Title of Idea</label>
                                <input type="" class="form-control" placeholder="your idea title" name="titleCreateD">
                            </div>
                        </div>

                        <div><!--NEW TEXT DESCRIPTION AREA-->
                            <div class="col-md-12 form-group"><!--C = CREATE end D = DEVELOPER-->
                                <label for="inputTitleD2">Description of Idea</label>
                                <textarea class="form-control" name="descriptionCreateD" style="height: 200px;"> </textarea>
                            </div>
                        </div>
                        <br>

                        <div><!--BUTTON SUBMIT-->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                        </div>					
                    </form>
                </div>

                <!--CREATE COMPANY AREA-->
                <div class="tab-pane fade" id="changes">
                    <form action="ideaDevChanges" method="GET">
                        <center>
                            <div class="page-header-1415 text-title" style="margin-top: 5px;">DEVELOPER | 
                                <small>Changes Your Idea</small> 
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true" style="float: right;"></span>
                            </div>
                        </center>

                        <div class="alert alert-info alert-dismissable fade in">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Info!</strong> Complete all fields to change your idea.
                        </div>

                        <div><!--TITLE CHANGE-->
                            <div class="col-md-12 form-group"><!--N = NEW | D = DEVELOPER-->
                                <label for="inputTitleN1">Title to Change</label>
                                <input type="" class="form-control" placeholder="your idea title" name="titleChangesD"><!--OLD TITLE-->

                                <h1 class="col-md-12 page-header-1415"></h1>

                            </div>
                        </div>

                        <div><!--IMAGE-->
                            <div class="col-md-12 form-group">
                                <label for="inputImageN">New Image</label>
                                <input type="file" class="form-control" placeholder="" name="imageNChangesD"><!--NEW IMAGE-->
                            </div>
                        </div>

                        <div><!--TITLE-->
                            <div class="col-md-12 form-group">
                                <label for="inputTitleN2">New Title</label>
                                <input type="text" class="form-control" placeholder="new title" name="titleNChangesD"><!--NEW TITLE-->
                            </div>
                        </div>

                        <div><!--TEXT DESCRIPTION AREA-->
                            <div class="col-md-12 form-group">
                                <label for="inputTitleN3">New Description</label>
                                <textarea class="form-control" name="descriptionCreateD" style="height: 200px;"> </textarea><!--NEW DESCRIPTION-->
                            </div>
                        </div>

                        <div><!--PASSWORD-->
                            <div class="col-md-6 form-group">
                                <label for="inputPasswordN">Your Password</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordChangesD"><!--PASSWORD FOR CONFIRMATION-->
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputConfirmPasswordN">Password Confirm</label>
                                <input type="password" class="form-control" placeholder="••••••••••" name="passwordConfirmChangesD"><!--CONFIRM PASSWORD-->
                            </div>
                        </div>
                        <br>

                        <div><!--BUTTON-->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                        </div>
                    </form>
                </div>

                <!--CREATE COMPANY AREA-->
                <div class="tab-pane fade" id="delete">
                    <form action="ideaDevDelet" method="GET">
                        <center>
                            <div class="page-header-1415 text-title" style="margin-top: 5px;">DEVELOPER | 
                                <small>Delete Your Idea</small> 
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true" style="float: right;"></span>
                            </div>
                        </center>

                        <div class="alert alert-info alert-dismissable fade in">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Info!</strong> Complete all fields to delete idea.
                        </div>

                        <div><!--TITLE CHANGE-->
                            <div class="col-md-12 form-group"><!--D = DELETE | C = CONFIRM or | D = DEVELOPER-->
                                <label for="inputTitleD">Title to Delete</label>
                                <input type="text" class="form-control" placeholder="your idea title" name="titleDeleteD">
                            </div>

                            <br>

                            <div class="col-md-12 form-group"><!--D = DELETE-->
                                <label for="inputConfirmTitleD">Confirm Title to Delete</label>
                                <input type="text" class="form-control" placeholder="your idea title" name="titleCDeleteD">

                                <h1 class="col-md-12 page-header-1415"></h1>

                            </div>
                        </div>

                        <div><!--PASSWORD-->
                            <div class="col-md-6 form-group">
                                <label for="inputPasswordD">Your Password</label>
                                <input type="password" class="form-control" placeholder="•••••••••" name="passwordCreateD">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="inputConfirmPasswordD">Password Confirm</label>
                                <input type="password" class="form-control" placeholder="••••••••••" name="passwordConfirmRegisterD">
                            </div>
                        </div>
                        <br>

                        <div><!--BUTTON-->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                        </div>
                    </form>

                </div>

            </div>
        </div>

    </body>
</html>
