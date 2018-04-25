<%-- 
    Document   : home
    Created on : Apr 5, 2018, 10:23:39 AM
    Author     : nguyenhaidang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-locale="fr_FR" lang="fr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMA Caisse</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

        <!-- Plugin CSS -->
        <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/creative.min.css" rel="stylesheet">

        <!-- Datetime picker-->
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="./css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    </head>

    <body id="page-top">
        <!-- Navigation -->
        <jsp:include page="nav.jsp" />
        <header class="masthead text-center text-white d-flex">
            <div class="container my-auto">
                <div class="row">
                    <div class="col-lg-10 mx-auto">
                        <h1 class="text-uppercase">
                            <strong>EMA'Caisse</strong>
                        </h1>
                        <hr>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 mx-auto">
                        <form method="post" action="ride">
                    
                        <p class="text-faded mb-5">Le covoiturage simplifie vos trajets.</p>
                        <div class="control-group"><input name="fromlocation" id="fromlocation" type="text" class="form-control" placeholder="Depart" autofocus></div>
                        <br>
                        <div class="control-group"><input name="tolocation" id="tolocation" type="text" class="form-control" placeholder="Destination"></div>
                        <br>
                        <div class="control-group">
                            <div name="ridedate" class="controls input-append date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                <input class="form-control" type="text" placeholder="Date" readonly>
                                <span class="add-on"><i class="icon-remove"></i></span>
                                <span class="add-on"><i class="icon-th"></i></span>
                            </div>
                            <input type="hidden" id="dtp_input2" value="" /><br/>
                        </div>
                        <br><br>
                        <input type="submit" class="btn btn-primary btn-xl js-scroll-trigger" value="Chercher un trajet">
                    
                    </form>
                        </div>
                </div>
            </div>
        </header>

        <section class="bg-primary" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 mx-auto text-center">
                        <h2 class="section-heading text-white">Vous prenez le volant ? Dites-nous où vous allez !</h2>
                        <hr class="light my-4">
                        <p class="text-faded mb-4">Profitez d'un trajet à moindre frais.</p>
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="ad">Proposer un trajet</a>
                    </div>
                </div>
            </div>
        </section>

        <section id="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                        <h2 class="section-heading">Où allez-vous ?</h2>
                        <hr class="my-4">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fa fa-4x fa-diamond text-primary mb-3 sr-icons"></i>
                            <h3 class="mb-3">Bordeaux-Toulouse</h3>
                            <p class="text-muted mb-0">à partir de 13 €</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
                            <h3 class="mb-3">Nantes-Rennes</h3>
                            <p class="text-muted mb-0">à partir de 13 €</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
                            <h3 class="mb-3">Paris-Lion</h3>
                            <p class="text-muted mb-0"> partir de 13 €</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 text-center">
                        <div class="service-box mt-5 mx-auto">
                            <i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
                            <h3 class="mb-3">Paris-Vietnam</h3>
                            <p class="text-muted mb-0"> partir de 13 €</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="p-0" id="portfolio">
            <div class="container-fluid p-0">
                <div class="row no-gutters popup-gallery">
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/1.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/1.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        Category
                                    </div>
                                    <div class="project-name">
                                        Project Name
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/2.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/2.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        Category
                                    </div>
                                    <div class="project-name">
                                        Project Name
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/3.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/3.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        Category
                                    </div>
                                    <div class="project-name">
                                        Project Name
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/4.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/4.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        Category
                                    </div>
                                    <div class="project-name">
                                        Project Name
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/5.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/5.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        Category
                                    </div>
                                    <div class="project-name">
                                        Project Name
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/6.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/6.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        Category
                                    </div>
                                    <div class="project-name">
                                        Project Name
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <section class="bg-dark text-white">
            <div class="container text-center">
                <h2>Allez où vous voulez. D'où vous voulez.</h2>
                <a class="btn btn-light" href="#">EMA'caisse</a>
            </div>
        </section>

        <section id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 mx-auto text-center">
                        <h2 class="section-heading">Let's Get In Touch!</h2>
                        <hr class="my-4">
                        <p class="mb-5">Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 ml-auto text-center">
                        <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
                        <p>123-456-6789</p>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 mr-auto text-center">
                        <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
                        <p>
                            <a href="mailto:haidang.cva@gmail.com">haidang.cva@gmail.com</a>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/creative.min.js"></script>

        <!--custom datetime picker -->
        <script type="text/javascript" src="./vendor/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript" src="./js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
        <script type="text/javascript" src="./js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
        <script type="text/javascript" src="./js/city.js" charset="UTF-8"></script>

        <script type="text/javascript">
            $('.form_datetime').datetimepicker({
                //language:  'fr',
                weekStart: 1,
                todayBtn: 1,
                autoclose: 1,
                todayHighlight: 1,
                startView: 2,
                forceParse: 0,
                showMeridian: 1
            });
            $('.form_date').datetimepicker({
                language: 'fr',
                weekStart: 1,
                todayBtn: 1,
                autoclose: 1,
                todayHighlight: 1,
                startView: 2,
                minView: 2,
                forceParse: 0
            });
            $('.form_time').datetimepicker({
                language: 'fr',
                weekStart: 1,
                todayBtn: 1,
                autoclose: 1,
                todayHighlight: 1,
                startView: 1,
                minView: 0,
                maxView: 1,
                forceParse: 0
            });

            $("#fromlocation").autocomplete({
                source: cities
            });

            $("#tolocation").autocomplete({
                source: cities
            });
        </script>
    </body>

</html>
