<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit character</title>
    <link rel="stylesheet" href="../../../style.css" />
    <script type = "text/javascript" src ="../../../script.js"></script>
</head>
<body>
<form:form method="post" action="/character/edit" modelAttribute="playerCharacter">
    <table>
        <tr>
            <th>Character Name</th>
            <th>Gender</th>
        </tr>
        <tr>
            <td><form:input path="charName"/></td>
                <%--        <td><form:errors path="charName" cssClass="error"/></td>--%>
            <td>
                <form:radiobutton path="gender" value = "M" label = "Male"/>
                <form:radiobutton path="gender" value = "F" label = "Female"/>
            </td>
        </tr>
        <tr>
            <td><form:errors path="charName" cssClass="error"/></td>
            <td><form:errors path="gender" cssClass="error"/></td>
        </tr>
    </table>
    <p>
        <label for="agility">Agility</label>
        <form:input id = "agility" path="charAttributes.agilityValue"/>
        <form:errors path="charAttributes.agilityValue" cssClass="error"/>
        <label for="agilityAffinity">Affinity</label>
        <form:input id = "agilityAffinity" path="charAttributes.agilityAffinity"/>

    </p>


<p>
        <a href="/character/list">Cancel</a>
        <input type="submit" value="Add">
    </p>
</form:form>
</body>
</html>
