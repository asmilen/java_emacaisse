<%-- 
    Document   : login
    Created on : Apr 5, 2018, 12:00:55 PM
    Author     : nguyenhaidang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Bootstrap Core CSS -->
        <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="./vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    </head>
    <body>
        <div align="center" class="table">
            <form method="get" action="Register">
                <fieldset>
                    <legend>Register</legend>
                    <div class="row"> 
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            <label for="villeDepart">Email<span class="requis" style="color:red">*</span></label>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                            <input type="email" id="emailid" name="email" value="" size="30" maxlength="30" required/>
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            <label for="villeArrivee">Password<span class="requis" style="color: red">*</span></label>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                            <input type="text" id="passwordid" name="password" value="" size="30" maxlength="30" required/>
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            <label for="villeArrivee">First name</label>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                            <input type="text" id="firstnameid" name="first_name" value="" size="30" maxlength="30" />
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            <label for="villeArrivee">Last name</label>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                            <input type="text" id="lastnameid" name="last_name" value="" size="30" maxlength="30" />
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            <label for="villeArrivee">Phone</label>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                            <input type="text" id="phoneid" name="phone" value="" size="30" maxlength="30" />
                        </div>
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            <label for="villeArrivee">Date of birth</label>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                            <input type="text" id="dateofbirthid" name="date_of_birth" value="" size="30" maxlength="30" />
                        </div>
                    </div>
                </fieldset>
                <br><br><br>
                <div>
                    <input class="btn btn-success"  type="submit" value="Sign Up"  />
                </div>
            </form>
        </div>
    </body>
</html>