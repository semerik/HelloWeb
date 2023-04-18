<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="org.mypackage.hello.NameHandler" />
        <jsp:setProperty name="mybean" property="name" />
        <jsp:setProperty name="mybean" property="nacimiento"/>
        
        <%-- fecha actual --%>
        <% LocalDate currentDate = LocalDate.now(); %>
        
        <%-- fecha de nacimiento del usuario --%>
        <% LocalDate fechaNacimiento = LocalDate.parse(mybean.getNacimiento()); %>
        
        <%-- Calcular edad del usuario --%>
        <% int edad = currentDate.getYear() - fechaNacimiento.getYear(); %>
        <% if (fechaNacimiento.getDayOfYear() > currentDate.getDayOfYear()) {
                edad--;
            } 
        %>
        
        <%-- Saludar al usuario según el horario del día y mostrar su edad --%>
        <% java.util.Calendar clock = java.util.Calendar.getInstance();%>
        <% if (clock.get(Calendar.HOUR_OF_DAY) < 12) { %>
            <h1>Buenos días, <%= mybean.getName() %>, tu fecha de nacimiento es <%= mybean.getNacimiento() %> y tienes <%= edad %> años!</h1>
        <% } else if (clock.get(Calendar.HOUR_OF_DAY) < 18) { %>
            <h1>Buenas tardes, <%= mybean.getName() %>, tu fecha de nacimiento es <%= mybean.getNacimiento() %> y tienes <%= edad %> años!</h1>
        <% } else { %>
            <h1>Buenas noches, <%= mybean.getName() %>, tu fecha de nacimiento es <%= mybean.getNacimiento() %> y tienes <%= edad %> años!</h1>
        <% } %>
        
    </body>
</html>
