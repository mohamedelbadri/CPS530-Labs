<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Meta tags -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="CPS 530 Lab5">
  <meta name="author" content="Mo Elbadry">

  <style>
  body{
  background-color: <%=Request.QueryString("Colour")%>
  }
  </style>

  <title>CPS 530 Lab 5 Part 2</title>
</head>
<body>
<h2>
<%
  If Request.Cookies("LastVisit") Is Nothing Then
    Response.Write("First Visit")
    Response.Cookies("LastVisit") = Date()
    Response.Cookies("LastVisit").Expires = Date() + 5
  Else
    CookieCount = Request.Cookies("LastVisit")
    Response.Write("The last time you visited was " & CookieCount)
  End If
%>


</h2>
</body>
</html>