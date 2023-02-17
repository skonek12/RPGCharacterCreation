<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new character</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<form:form method="post" action="/character/new" modelAttribute="playerCharacter">
<%--    <p>--%>
<%--        <form:label path="title">Title</form:label>--%>
<%--        <form:input path="title"/>--%>
<%--        <form:errors path="title" cssClass="error"/>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        <form:label path="rating">Rating</form:label>--%>
<%--        <form:input path="rating"/>--%>
<%--        <form:errors path="rating" cssClass="error"/>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        <form:label path="description">Description</form:label>--%>
<%--        <form:input path="description"/>--%>
<%--        <form:errors path="description" cssClass="error"/>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        <form:label path="pages">Pages</form:label>--%>
<%--        <form:input path="pages"/>--%>
<%--        <form:errors path="pages" cssClass="error"/>--%>
<%--    </p>--%>


        <p>
            <form:label path="charName">Name</form:label>
            <form:input path="charName"/>
            <form:errors path="charName" cssClass="error"/>
        </p>
    <p>
        <form:label path="gender">Gender</form:label>
        <form:radiobutton path="gender" value = "M" label = "Male"/>
        <form:radiobutton path="gender" value = "F" label = "Female"/>
        <form:errors path="gender" cssClass="error"/>
    </p>

<%--    Atrybutes--%>
    <p>
        <form:label path="${playerCharacter.charAttributes}">Character Attributes</form:label>
    </p>
    <p>
        <label for="agility">Agility</label>
        <form:input id = "agility" path="charAttributes.agilityValue"/>
        <label for="agilityAffinity">Affinity</label>
        <form:input id = "agilityAffinity" path="charAttributes.agilityAffinity"/>
<%--        <form:errors path="charAttributes" cssClass="error"/>--%>
    </p>
    <p>
<%--        <form:label path="${playerCharacter.charAttributes.phisiqueValue}">Phisique</form:label>--%>
        <form:input path="charAttributes.phisiqueValue"/>
        <form:label path="${playerCharacter.charAttributes.phisiqueAffinity}">Affinity</form:label>
        <form:input path="charAttributes.phisiqueAffinity"/>
        <form:errors path="charAttributes" cssClass="error"/>
    </p>
    <p>
<%--        <form:label path="${playerCharacter.charAttributes.perceptionValue}">Perception</form:label>--%>
        <form:input path="charAttributes.perceptionValue"/>
        <form:label path="${playerCharacter.charAttributes.perceptionAffinity}">Affinity</form:label>
        <form:input path="charAttributes.perceptionAffinity"/>
        <form:errors path="charAttributes" cssClass="error"/>
    </p>
    <p>
<%--        <form:label path="${playerCharacter.charAttributes.personalityValue}">Personality</form:label>--%>
        <form:input path="charAttributes.personalityValue"/>
        <form:label path="${playerCharacter.charAttributes.personalityAffinity}">Affinity</form:label>
        <form:input path="charAttributes.personalityAffinity"/>
        <form:errors path="charAttributes" cssClass="error"/>
    </p>
    <p>
<%--        <form:label path="${playerCharacter.charAttributes.mentalityValue}">Mentality</form:label>--%>
        <form:input path="charAttributes.mentalityValue"/>
        <form:label path="${playerCharacter.charAttributes.mentalityAffinity}">Affinity</form:label>
        <form:input path="charAttributes.mentalityAffinity"/>
        <form:errors path="charAttributes" cssClass="error"/>
    </p>
    <p>
<%--        <form:label path="${playerCharacter.charAttributes.luckValue}">Luck</form:label>--%>
        <form:input path="charAttributes.luckValue"/>
        <form:label path="${playerCharacter.charAttributes.luckAffinity}">Affinity</form:label>
        <form:input path="charAttributes.luckAffinity"/>
        <form:errors path="charAttributes" cssClass="error"/>
    </p>




    <p>
        <form:label path="race">Race</form:label>
        <form:select itemValue="charRaceId" itemLabel="raceName" path="race" items="${races}" />
        <form:errors path="race" cssClass="error"/>
    </p>
    <p>
        <form:label path="charClass">Class</form:label>
        <form:select itemValue="charClassId" itemLabel="className" path="charClass" items="${classes}" />
        <form:errors path="charClass" cssClass="error"/>
    </p>
    <p>
        <form:label path="perks">Perk</form:label>
        <form:select itemValue="perkId" itemLabel="perkName" path="perks" items="${perks}" />
        <form:errors path="perks" cssClass="error"/>
    </p>
        <p>
            <form:label path="charDescription">Description</form:label>
            <form:textarea path="charDescription"/>
            <form:errors path="charDescription" cssClass="error"/>
        </p>

<%--    <p>--%>
<%--        <form:label path="authors">Authors</form:label>--%>
<%--        <form:select itemValue="id" itemLabel="name" path="authors" items="${authors}" multiple="true" />--%>
<%--        <form:errors path="authors" cssClass="error"/>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        <form:label path="category">Category</form:label>--%>
<%--        <form:select itemValue="id" itemLabel="name" path="category" items="${categories}"/>--%>
<%--        <form:errors path="category" cssClass="error"/>--%>
<%--    </p>--%>
    <p>
        <a href="/character/list">Cancel</a>
        <input type="submit" value="Add">
    </p>
</form:form>
</body>
</html>
