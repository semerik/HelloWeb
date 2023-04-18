<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Entry Form</h1>
        
        <form name="Name Input Form" action="response.jsp">
            Enter your name:
            <input type="text" name="name"/>
            Enter your birthdate
            <input type="text" name="nacimiento" pattern="\d{4}-\d{2}-\d{2}" placeholder="YYYY-MM-DD" />
            <input type="submit" value="OK" />
        </form>
        
    </body>
</html>
