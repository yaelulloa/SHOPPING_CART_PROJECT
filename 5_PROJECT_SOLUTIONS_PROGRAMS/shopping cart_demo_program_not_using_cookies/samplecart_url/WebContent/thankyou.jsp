<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <h1>Thank you for your order!</h1>
    
    <form action=<%=response.encodeURL("cart") %> method="post">
  	<input type="hidden" name="action" value="shop">
  	<input type="submit" value="Go Back to Shop">
</form>
</body>
</html>