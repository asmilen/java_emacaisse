<%-- 
    Document   : travelling
    Created on : Apr 12, 2018, 9:02:28 PM
    Author     : nguyenhaidang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-locale="fr_FR" lang="fr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMA'CAISSE</title>
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
    </head>

    <body style="background-color: buttonface">
        <!-- Navigation -->
        <jsp:include page="nav.jsp" />
        <div align="center" style="margin-top: 5%">
            <p>
                <span>
                    <svg aria-hidden="true" style="width:40px; height:40px;"><use xlink:href="#icon-strike"></use></svg>

                    <span>
                        Grève
                    </span>
                </span>
                <span>
                    <span>
                        7 trajets complets.
                    </span>
                    <span>
                        9 trajets disponibles.
                    </span>
                </span>
            </p>
        </div>
        <br>
        <div align="center">
            <h2 data-distance-unit="km" data-text="Durée&nbsp;: %duration_hours%&nbsp;h %duration_minutes%&nbsp;m" data-from="48.5734053,7.7521113" data-to="43.836699,4.360054">Durée&nbsp;: 7&nbsp;h 50&nbsp;m</h2>
        </div>
        <br>
        <!--table travelling -->
        <table class="table">
            <thead>
                <tr>
                    <th>Driver</th>
                    <th>Time</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <!-- each row -->
                <tr>
                    <td>
                        <div>
                            <div>
                                <img src="https://d2kwny77wxvuie.cloudfront.net/user/VtL_WyOyTjuJTgkOtNJjYw/thumbnail_72x72.jpeg" width="72" height="72" alt="">
                            </div>
                        </div>
                        <div>
                            <h2>
                                
                            </h2>
                            <div>
                                48 ans<br>
                            </div>
                        </div>
                    </td>
                    <td><h3 itemprop="startDate">
                            Demain à 07:30
                        </h3>
                        <h3 itemprop="name">
                            <span>Strasbourg</span>
                            <span class="arrow">→</span>
                            <span>Montpellier</span>
                            <span class="arrow">→</span>
                            <span>Frontignan</span>
                        </h3>
                        <dl>
                            <dt>
                                <svg aria-hidden="true" style="width: 18px; height: 18px;"><use xlink:href="#icon-circle"></use></svg>

                            </dt>
                            <dd data-hasqtip="6">
                                Strasbourg, France
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <svg aria-hidden="true" style="width: 18px; height: 18px;"><use xlink:href="#icon-circle"></use></svg>

                            </dt>
                            <dd data-hasqtip="7">
                                RDV à 119 Rond-Point des Prés d'Arènes, 34000 Montpelilier : voir avec le conducteur
                            </dd>
                        </dl></td>
                    <td><div itemprop="location">
                            <strong>
                                <span class="">
                                    60<span>,00&nbsp;€</span></span>                    </strong>
                            <span>par place</span>
                        </div>
                        <div>
                            <strong>2</strong> <span>places restantes</span>
                        </div></td>
                </tr>
                <!-- each row -->
                <tr>
                    <td>Mary</td>
                    <td>Moe</td>
                    <td>mary@example.com</td>
                </tr>
                <!-- each row -->
                <tr>
                    <td>July</td>
                    <td>Dooley</td>
                    <td>july@example.com</td>
                </tr>
            </tbody>
        </table>
        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/creative.min.js"></script>

    </body>
</html>
