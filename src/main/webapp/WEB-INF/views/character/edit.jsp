<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit character</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<form:form method="post" action="/character/edit" modelAttribute="playerCharacter">
    <p>
        <form:label path="playerCharacter">Name</form:label>
        <form:input path="playerCharacter.charName" value ="${charName}" />
        <form:errors path="charName" cssClass="error"/>
    </p>
<p>
        <a href="/character/list">Cancel</a>
        <input type="submit" value="Add">
    </p>
</form:form>
</body>
</html>
