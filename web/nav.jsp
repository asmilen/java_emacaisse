<%-- 
    Document   : nav
    Created on : Apr 5, 2018, 10:33:03 AM
    Author     : nguyenhaidang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-locale="fr_FR" lang="fr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="index.jsp">EMA'caisse</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="userprofile.jsp">Profil</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="login.jsp">Connexion</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="vehicle.jsp">Vehicle</a>
                        </li>
                        <li class="nav-item">
                            <!--<a class="nav-link js-scroll-trigger" href="ad">Proposer un covoiturage</a>-->
                            <a class="nav-link js-scroll-trigger" href="contact.jsp">Contact</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link js-scroll-trigger dropdown-toggle" data-toggle="dropdown"><b>Connexion</b> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            connexion via
                                            <div class="social-buttons">
                                                <a href="https://www.facebook.com" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
                                                <a href="https://twitter.com" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
                                            </div>
                                            ou
                                            <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputEmail2">Adresse email</label>
                                                    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
                                                </div>
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputPassword2">mot de passe</label>
                                                    <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                                    <div class="help-block text-center"><a href="">mot de passe oublié</a></div>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-primary btn-block">se connecter</button>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox">me garder connecté
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <div>
                                                        <a href="" >
                                                            <i class="fa fa-sign-out fa-fw">Logout</i>
                                                        </a>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </body>
</html>
