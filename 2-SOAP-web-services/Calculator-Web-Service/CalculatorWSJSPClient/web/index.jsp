<%-- 
    Document   : index
    Created on : Nov 18, 2017, 4:40:18 PM
    Author     : jorgesanzperez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>    
    <%-- start web service invocation --%><hr/>
    <%
    try {
	org.me.calculator.CalculatorWS_Service service = new org.me.calculator.CalculatorWS_Service();
	org.me.calculator.CalculatorWS port = service.getCalculatorWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.Integer i = Integer.valueOf(3);
	java.lang.Integer j = Integer.valueOf(4);
	// TODO process result here
	java.lang.Integer result = port.add(i, j);
	out.println("Result = "+result);
    } catch (Exception ex) {
	System.out.println("Exception: " + ex);
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
