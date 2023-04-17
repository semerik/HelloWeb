<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <%java.util.Calendar clock = java.util.Calendar.getInstance();%>
        
    <c:choose>
        
        <c:when test="${clock.get(Calendar.HOUR_OF_DAY) < 12}">
            <h1>Buenos días, <jsp:getProperty name="mybean" property="name" />, tu fecha de nacimiento es <jsp:getProperty name="mybean" property="nacimiento" />!</h1>
        </c:when>
        
        <c:when test="${clock.get(Calendar.HOUR_OF_DAY) < 18}">
            <h1>Buenas tardes, <jsp:getProperty name="mybean" property="name" />, tu fecha de nacimiento es <jsp:getProperty name="mybean" property="nacimiento" />!</h1>
        </c:when>
        
        <c:otherwise>
            <h1>Buenas noches, <jsp:getProperty name="mybean" property="name" />, tu fecha de nacimiento es <jsp:getProperty name="mybean" property="nacimiento" />!</h1>
        </c:otherwise>
    </c:choose>

</body>
</html>
