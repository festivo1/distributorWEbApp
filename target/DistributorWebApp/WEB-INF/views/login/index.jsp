
<%@page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Login Page</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link href="${SITE_URL}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${SITE_URL}/static/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <script src="${SITE_URL}/static/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${SITE_URL}/static/js/jquery.min.js" type="text/javascript"></script>
        <link href="${SITE_URL}/static/css/bootstrasp.contactform.css" rel="stylesheet" type="text/css"/>
        <script src="${SITE_URL}/static/js/bootstrap.contactform.js" type="text/javascript"></script>
        <script src="${SITE_URL}/static/js/javascript.table.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link href="${SITE_URL}/static/css/bootstrap.table.css" rel="stylesheet" type="text/css"/>
        <!-- Optional theme -->

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery.min.js"></script>

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>

    <body onload='document.loginForm.username.focus();'>
       
            <h1>Spring Security Custom Login Form (XML)</h1>

            <div id="login-box">

                <h3>Login with Username and Password</h3>

                <c:if test="${not empty error}">
                    <div class="error">${error}</div>
                </c:if>
                <c:if test="${not empty msg}">
                    <div class="msg">${msg}</div>
                </c:if>

                <form name='loginForm'
                      action="<c:url value='/j_spring_security_check' />" method='POST'>

                    <table>
                        <tr>
                            <td>User:</td>
                            <td><input type='text' name='username'></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type='password' name='password' /></td>
                        </tr>
                        <tr>
                            <td colspan='2'><input name="submit" type="submit"
                                                   value="submit" /></td>
                        </tr>
                    </table>

                    <input type="hidden" name="${_csrf.parameterName}"
                           value="${_csrf.token}" />

                </form>
            </div>
  

    </body>
</html>