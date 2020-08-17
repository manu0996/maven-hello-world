<%@page import="org.allowed.bitarus.Handler" %>
<jsp:useBean id="testBean" class="org.allowed.bitarus.TestBean" />
<% //Handler handler = new Handler(request,response,out); %>
<% Handler handler = new Handler(pageContext); %>
<!DOCTYPE html>
<html>
    <body>        
        <p>Hello</p>
        <p>World <jsp:getProperty name="testBean" property="name" /> </p>
        <% handler.writeHandler(); %>
        <h2><% out.print("Your IP address is " + request.getRemoteAddr()); %></h2>
        <h3><% handler.writeIP(); %></h3>
    </body>
</html>
