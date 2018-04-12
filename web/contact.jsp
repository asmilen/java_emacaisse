<%-- 
    Document   : contact
    Created on : Apr 12, 2018, 3:16:18 PM
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

    <body style="background-color:gray;">
        <!-- Navigation -->
        <jsp:include page="nav.jsp" />
        <br><br><br><br>
        <div class="container my-auto">
            <div class="row">
                <div class="col-lg-8 mx-auto text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="my-4">
                    <p class="mb-5">Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
            </div>
            <div align="center" class="table">
                <div class="row"> 
                    <div class="col-lg-5">
                        <label for="villeDepart">Email</label>
                    </div>
                    <br>
                    <div class="col-lg-7">
                        <input type="text" id="villeDepart" name="villeDepart" value="" size="20" maxlength="20" required/>
                    </div>
                </div>
                <br>
                <div class="row"> 
                    <div class="col-lg-5">
                        <label for="comment">Comment:</label>
                    </div>
                    <div class="col-lg-5">
                        <textarea class="form-control" rows="5" id="comment"></textarea>
                    </div>
                </div>
                <br>
                <div>
                    <input class="btn btn-success" type="submit" value="Send"  />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 ml-auto text-center">
                <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
                <p>123-456-6789</p>
            </div>
            <div class="col-lg-4 mr-auto text-center">
                <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
                <p>
                    <a href="mailto:haidang.cva@gmail.com">haidang.cva@gmail.com</a>
                </p>
            </div>
        </div>
    </body>
</html>
