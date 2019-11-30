<!DOCTYPE html>
<html>
    <head>
        <!-- <style>
            body {
                background-color: <%=Request.QueryString("Colour")%>
            }
        </style> -->
        <title>Part II - ASP Query</title>
    </head>
    <body>
        <p>This is a test</p>
        <%
        <!-- name = Request.Form("name")
        Response.Write("Name: " & name & "<br/>") -->
        If Response.Cookies("user") Is Nothing Then
        Response.Cookies("user") = date()
        Response.Cookies("user").Expires = date() + 10
        ses = Request.Cookies("user")
        Else
        Response.Write("Last visited " & ses)
        End If
        %>
        
    </body>
</html>