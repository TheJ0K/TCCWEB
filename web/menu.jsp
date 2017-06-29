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

            <!--
                <center> SEARCH
                    <div class="navbar-form navbar-left form-group input-group-btn">
                        <input type="text" style="border-radius: 0px;" class="form-control input-group" placeholder="Search">
                        <button type="submit" class="expand btn-group btn btn-info active">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </div>
                </center>
            -->

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